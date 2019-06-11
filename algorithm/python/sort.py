#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# bubble sort
def bubble(nums):
    length = len(nums)
    for i in range(length - 1):
        for j in range(length - i - 1):
            print(nums)
            if nums[j] > nums[j + 1]:
                nums[j], nums[j + 1] = nums[j + 1], nums[j] 
    return nums


# quick sort 1
quick_sort = lambda nums: nums if len(nums) < 2 else quick_sort([nu for nu in nums[1:] if nu < nums[0]]) + [nums[0]] + quick_sort([nu for nu in nums[1:] if nu >= nums[0]])


# quick sort 2(inplace)
def quick_sort2(nums, left, right):
    if left >= right:
        return

    low = left
    high = right
    pivot = nums[left]
    while left < right:
        while left < right and nums[right] > pivot:
            right -= 1
        nums[left] = nums[right]

        while left < right and nums[left] <= pivot:
            left += 1
        nums[right] = nums[left]
    nums[left] = pivot
    quick_sort2(nums, low, left - 1)
    quick_sort2(nums, left + 1, high)


# quick sort 3
def partition(nums, l, r):
    x = l - 1
    pivot = nums[r]
    for j in range(l, r):
        if nums[j] <= pivot:
            x += 1
            nums[x], nums[j] = nums[j], nums[x]
    nums[x + 1], nums[r] = nums[r], nums[x + 1]
    return x + 1


def quick_sort3(nums, l, r):
    if l >= r:
        return

    q = partition(nums, l, r)
    quick_sort3(nums, l, q - 1)
    quick_sort3(nums, q + 1, r)


if __name__ == '__main__':
    nums = list(range(10, 0, -1))
    print("nums: {}".format(nums))
    # print(quick_sort([4, 3, 2, 1]))
    # quick_sort2(nums, 0, len(nums) - 1)
    quick_sort3(nums, 0, len(nums) - 1)
    print(nums)
