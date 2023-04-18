/// You are climbing a staircase. It takes n steps to reach the top.
/// Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
///
/// Constraints:
/// 1 <= n <= 45

/// O(n)
/// Дополнительная память не используется => O(1)


func climbStairs(_ n: Int) -> Int {
    guard n != 1 || n != 0 else { return 1 }
    
    var first = 1
    var second = 1
    var step = 2
    
    while step <= n {
        /// Добавляем третью переменную
        var therd = first + second
        
        /// Во первую присваеиваем значение которое изначально лежало во второй
        first = second
        
        /// Во вторую присваиваем сумму предыдущих двух переменных
        second = therd
        
        /// Увеличиваем шаг
        step += 1
    }
    return second
}

climbStairs(3)
