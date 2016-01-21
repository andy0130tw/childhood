package com {
	public class Solution {
		
		public var sol:Array=[];
		public var found:Array=[];
		
		//建構子
		public function Solution(givenSolution:Array) {
			sol=givenSolution;
			for(var i:int=0;i<givenSolution.length;i++){
				found.push(false);
			}
		}
		
		public function checkAnswer(ans:String):Boolean{
			//回傳true表示傳入的解是新的，否則是已重複
			var flag:Boolean=false;
			for(var i:int=0;i<sol.length;i++){//新解的話就幫這筆解答加上標記
				if(sol[i]==ans){
					if(!found[i]){
						found[i]=true;
						flag=true;
					}
				}
			}
			return flag;
		}
		
		public function get countFound():int{
			var _dump:int=0;
			for(var i:int=0;i<this.sol.length;i++){
				if(this.found[i])_dump++;
			}
			return _dump;
		}
		
		public function toString():String{
			return this.sol.join("a");
		}
	}
}