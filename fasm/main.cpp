int main() {
    int *a = new int[3] {1,2,3};

    for (int i = 0; i < 3; i++) {
        a[i]++;
    }

    delete[] a;

    return 0;
}