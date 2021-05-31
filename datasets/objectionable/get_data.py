import argparse
import gdown
from pathlib import Path


def main():
    parser = argparse.ArgumentParser(description='main',
                                     formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument('--train_labels_id', help='Direct download ID for the file in Google Drive')
    parser.add_argument('--train_id', help='Direct download ID for the file in Google Drive')
    parser.add_argument('--test_labels_id', help='Direct download ID for the file in Google Drive')
    parser.add_argument('--test_id', help='Direct download ID for the file in Google Drive')
    parser.add_argument('--label_names_id', help='Direct download ID for the file in Google Drive')
    parser.add_argument('--dataset', help='Name of dataset directory')

    args = parser.parse_args()
    pub_storage = "https://drive.google.com/uc?id="
    colab_path = f"/content/LOTClass/datasets/{args.dataset}/"
    train_labels_path = f"{pub_storage}{args.train_labels_id}"
    train_path = f"{pub_storage}{args.train_id}"
    test_labels_path = f"{pub_storage}{args.test_labels_id}"
    test_path = f"{pub_storage}{args.test_id}"
    label_names_path = f"{pub_storage}{args.label_names_id}"

    if not Path(f"{colab_path}label_names.txt").exists():
        gdown.download(label_names_path, f"{colab_path}label_names.txt", quiet=False)
    if not Path(f"{colab_path}train_labels.txt").exists():
        gdown.download(train_labels_path, f"{colab_path}train_labels.txt", quiet=False)
    if not Path(f"{colab_path}train.txt").exists():
        gdown.download(train_path, f"{colab_path}train.txt", quiet=False)
    if not Path(f"{colab_path}test_labels.txt").exists():
        gdown.download(test_labels_path, f"{colab_path}test_labels.txt", quiet=False)
    if not Path(f"{colab_path}test.txt").exists():
        gdown.download(test_path, f"{colab_path}test.txt", quiet=False)


if __name__ == "__main__":
    main()
