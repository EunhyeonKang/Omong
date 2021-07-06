package kr.or.omong;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.member.model.vo.User;

@Service
@Aspect
public class PasswordEnc {
	@Autowired
	private SHA256Enc enc;
	
	
	@Pointcut("execution(* kr.or..*Service.*(kr.or.member.model.vo.User))")
	public void encPointcut() {}
	
	@Before("encPointcut()")
	public void encPass(JoinPoint jp) throws Exception {
		String methodName = jp.getSignature().getName();
		Object[] args = jp.getArgs();
		User u = (User)args[0];
		if(u.getPw() != null) {			
			String passwd = u.getPw();
			String encPw = enc.encData(passwd);
			
			u.setPw(encPw);
		}
	}
}







