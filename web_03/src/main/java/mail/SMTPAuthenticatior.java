package mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
public class SMTPAuthenticatior extends Authenticator{
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("vkfkdto195","z4x5c6v7");
	}
}
