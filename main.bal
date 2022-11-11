import ballerina/io;

int[] arr = [2,8,32,4,16,64,1,24,12,48,3,96,6];
int last = arr.length()-1;

function insertSort() {
    foreach var item in 0..<arr.length() {
        int key = arr[item];
        int temp = item - 1;
        while (temp>-1)&&(arr[temp]>key) {
            arr[temp+1] = arr[temp];
            temp = temp - 1;
        }
        arr[temp+1] = key;
    }
}

function binarySearch(int first, int last, int key) returns int|string {
    if last>=first {
        int mid = first + (last-first)/2;
        if arr[mid]==key {
            return mid;
        }
        if arr[mid]>key {
            return binarySearch(first,mid-1,key);
        } else {
            return binarySearch(mid+1,last,key);
        }
    }
    return "Key not found!";
}

public function main() {
    insertSort();
    io:println(arr);
    io:println(binarySearch(0,last,13));
}
