package com{
	import com.Solution;
	
	public class SolutionSet{
		
		//每個成員都是Solution
		public var solArray:Array=[];
		
		public function SolutionSet(givenSolutionArray:Array){
			for(var i:int=0;i<givenSolutionArray.length;i++){
				solArray.push(new Solution(givenSolutionArray[i]));
			}
		}
		
		public function checkAnswer(ans:String):int{
			var _solPos:int=-1;
			for(var i:int=0;i<solArray.length;i++){
				if((solArray[i] as Solution).checkAnswer(ans)){
					//找到新解
					_solPos=i;
				}
			}
			return _solPos;
		}
		
		public function toString():String{
			return this.solArray.join("|");
		}
	}
}