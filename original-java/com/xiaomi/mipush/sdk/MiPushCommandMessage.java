package com.xiaomi.mipush.sdk;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public class MiPushCommandMessage implements a {
    private static final String KEY_CATEGORY = "category";
    private static final String KEY_COMMAND = "command";
    private static final String KEY_COMMAND_ARGUMENTS = "commandArguments";
    private static final String KEY_REASON = "reason";
    private static final String KEY_RESULT_CODE = "resultCode";
    private static final long serialVersionUID = 1;
    private String category;
    private String command;
    private List<String> commandArguments;
    private String reason;
    private long resultCode;

    public static MiPushCommandMessage fromBundle(Bundle bundle) {
        MiPushCommandMessage miPushCommandMessage = new MiPushCommandMessage();
        miPushCommandMessage.command = bundle.getString(KEY_COMMAND);
        miPushCommandMessage.resultCode = bundle.getLong(KEY_RESULT_CODE);
        miPushCommandMessage.reason = bundle.getString(KEY_REASON);
        miPushCommandMessage.commandArguments = bundle.getStringArrayList(KEY_COMMAND_ARGUMENTS);
        miPushCommandMessage.category = bundle.getString("category");
        return miPushCommandMessage;
    }

    public String getCategory() {
        return this.category;
    }

    public String getCommand() {
        return this.command;
    }

    public List<String> getCommandArguments() {
        return this.commandArguments;
    }

    public String getReason() {
        return this.reason;
    }

    public long getResultCode() {
        return this.resultCode;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setCommand(String str) {
        this.command = str;
    }

    public void setCommandArguments(List<String> list) {
        this.commandArguments = list;
    }

    public void setReason(String str) {
        this.reason = str;
    }

    public void setResultCode(long j) {
        this.resultCode = j;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(KEY_COMMAND, this.command);
        bundle.putLong(KEY_RESULT_CODE, this.resultCode);
        bundle.putString(KEY_REASON, this.reason);
        if (this.commandArguments != null) {
            bundle.putStringArrayList(KEY_COMMAND_ARGUMENTS, (ArrayList) this.commandArguments);
        }
        bundle.putString("category", this.category);
        return bundle;
    }

    public String toString() {
        return "command={" + this.command + "}, resultCode={" + this.resultCode + "}, reason={" + this.reason + "}, category={" + this.category + "}, commandArguments={" + this.commandArguments + "}";
    }
}
