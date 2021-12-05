object Solution {
  def twoSum(nums: Array[Int], target: Int): Array[Int] = {
    var map = Map.empty[Int, Int]
    for ((v, i) <- nums.zipWithIndex) {
      map.get(v) match {
        case Some(r) => return Array(r, i)
        case None => map ++= Map((target - v) -> i)
      }
    }
    null
  }
}
