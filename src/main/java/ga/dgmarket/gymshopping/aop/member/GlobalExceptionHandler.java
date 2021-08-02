package ga.dgmarket.gymshopping.aop.member;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import ga.dgmarket.gymshopping.exception.MemberExistException;

//모든 컨트롤러에 공통된 예외를 처리해주는 컨트롤러
@ControllerAdvice
public class GlobalExceptionHandler {
	@ExceptionHandler(MemberExistException.class)
	public String handleException(MemberExistException e, Model model) {
		model.addAttribute("e",e);
		return "redirect:/member/loginform";
	}
}
