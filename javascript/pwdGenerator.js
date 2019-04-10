const beginIndex = 2;
const endIndex = beginIndex + 6;

function generatePwd(){
	let random = String(Math.random());
	let pwd = random.substring(beginIndex, endIndex);
	return pwd;
}