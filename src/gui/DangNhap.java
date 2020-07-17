package gui;

import gui.base.BaseDialog;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;

import java.net.URL;
import java.util.ResourceBundle;

public class DangNhap extends BaseDialog {
    @FXML
    private TextField fieldUsername;
    @FXML
    private PasswordField pwdPassword;
    private boolean success = true;
    public DangNhap() {
        super("DangNhap.fxml", 400,350);
        setResizable(false);
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }

    @FXML
    private void loginNow(ActionEvent e) {
        close();
    }

    public boolean isSuccess() {
        return success;
    }
}
