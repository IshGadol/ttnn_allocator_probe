import torch
import torch.nn as nn
import torch_ttnn  # required to register backend


def run_test(name, module, input_tensor):
    print(f"\n=== {name} ===")
    try:
        compiled = torch.compile(module, backend="ttnn")
        out = compiled(input_tensor)
        print("PASS:", tuple(out.shape))
    except Exception as e:
        print("FAIL:")
        print(e)


def main():
    torch.manual_seed(0)

    # Verify backend visibility
    backends = torch._dynamo.list_backends()
    print("Backends:", backends)
    assert "ttnn" in backends, f"ttnn backend not found: {backends}"

    # Linear (expected PASS)
    linear = nn.Linear(256, 256)
    x_linear = torch.randn(1, 256)
    run_test("Linear 256x256", linear, x_linear)

    # Conv2d 1x1 (expected PASS)
    conv1x1 = nn.Conv2d(
        in_channels=3,
        out_channels=4,
        kernel_size=1,
        stride=1,
        padding=0,
        bias=True,
    )
    x_conv = torch.randn(1, 3, 8, 8)
    run_test("Conv2d 1x1", conv1x1, x_conv)

    # Conv2d 3x3 (expected FAIL)
    conv3x3 = nn.Conv2d(
        in_channels=3,
        out_channels=4,
        kernel_size=3,
        stride=1,
        padding=0,
        bias=True,
    )
    run_test("Conv2d 3x3", conv3x3, x_conv)


if __name__ == "__main__":
    main()
