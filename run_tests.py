import os
import subprocess
from datetime import datetime
import sys


def create_report_directory():
    timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    base_path = os.getcwd()
    report_path = os.path.join(base_path, "Reports", timestamp)
    os.makedirs(report_path, exist_ok=True)
    return report_path


def run_robot_tests():
    report_dir = create_report_directory()
    test_path = os.path.join(os.getcwd(), "Tests")

    command = [
        sys.executable,
        "-m",
        "robot",
        "--outputdir",
        report_dir,
        test_path
    ]

    print("Running command:", " ".join(command))
    subprocess.run(command)


if __name__ == "__main__":
    run_robot_tests()
