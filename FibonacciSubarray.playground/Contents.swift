import Darwin

func isFib(_ num: Int) -> Bool{
	return isPerfectSquare(num * num * 5 + 4) ||
	isPerfectSquare(num * num * 5 - 4)
}

func isPerfectSquare(_ num: Int) -> Bool{
	return sqrt(Double(num)).truncatingRemainder(dividingBy: 1) == 0.0
}

func fibSubArray(start: Int, count: Int) -> [Int]{
	if(!isFib(start)){
		return []
	}
	
	var prev = start >= 0 ? 1: -1
	var current = 0
	
	
	while(current != start) {
		let temp = current
		current = current + prev
		prev = temp
	}
	
	var subArray: [Int] = [current]
	for _ in 1..<count{
		let temp = current
		current = current + prev
		prev = temp
		subArray.append(current)
	}
	return subArray
}


fibSubArray(start: 3, count: 2)
fibSubArray(start: 5, count: 3)
fibSubArray(start: 4, count: 3)
fibSubArray(start: 0, count: 10)
fibSubArray(start: 144, count: 10)

