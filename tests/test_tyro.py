import tyro


def add(a: int, b: int = 3) -> int:
    return a + b

total = tyro.cli(add)
print(total)


def quick_sort(arr: list) -> list:
    """
    Quick sort algorithm
    """
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quick_sort(left) + middle + quick_sort(right)

arr = tyro.cli(quick_sort)
