package org.jboss.netty.handler.codec.spdy;

import com.mi.milinkforgame.sdk.base.os.Http;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.jboss.netty.util.internal.StringUtil;

public class DefaultSpdySettingsFrame implements SpdySettingsFrame {
    private boolean clear;
    private final Map<Integer, Setting> settingsMap = new TreeMap();

    private static final class Setting {
        private boolean persist;
        private boolean persisted;
        private int value;

        Setting(int i, boolean z, boolean z2) {
            this.value = i;
            this.persist = z;
            this.persisted = z2;
        }

        /* access modifiers changed from: 0000 */
        public int getValue() {
            return this.value;
        }

        /* access modifiers changed from: 0000 */
        public void setValue(int i) {
            this.value = i;
        }

        /* access modifiers changed from: 0000 */
        public boolean isPersist() {
            return this.persist;
        }

        /* access modifiers changed from: 0000 */
        public void setPersist(boolean z) {
            this.persist = z;
        }

        /* access modifiers changed from: 0000 */
        public boolean isPersisted() {
            return this.persisted;
        }

        /* access modifiers changed from: 0000 */
        public void setPersisted(boolean z) {
            this.persisted = z;
        }
    }

    @Deprecated
    public Set<Integer> getIDs() {
        return getIds();
    }

    public Set<Integer> getIds() {
        return this.settingsMap.keySet();
    }

    public boolean isSet(int i) {
        return this.settingsMap.containsKey(Integer.valueOf(i));
    }

    public int getValue(int i) {
        Integer valueOf = Integer.valueOf(i);
        if (this.settingsMap.containsKey(valueOf)) {
            return ((Setting) this.settingsMap.get(valueOf)).getValue();
        }
        return -1;
    }

    public void setValue(int i, int i2) {
        setValue(i, i2, false, false);
    }

    public void setValue(int i, int i2, boolean z, boolean z2) {
        if (i <= 0 || i > 16777215) {
            throw new IllegalArgumentException("Setting ID is not valid: " + i);
        }
        Integer valueOf = Integer.valueOf(i);
        if (this.settingsMap.containsKey(valueOf)) {
            Setting setting = (Setting) this.settingsMap.get(valueOf);
            setting.setValue(i2);
            setting.setPersist(z);
            setting.setPersisted(z2);
            return;
        }
        this.settingsMap.put(valueOf, new Setting(i2, z, z2));
    }

    public void removeValue(int i) {
        Integer valueOf = Integer.valueOf(i);
        if (this.settingsMap.containsKey(valueOf)) {
            this.settingsMap.remove(valueOf);
        }
    }

    @Deprecated
    public boolean persistValue(int i) {
        return isPersistValue(i);
    }

    public boolean isPersistValue(int i) {
        Integer valueOf = Integer.valueOf(i);
        if (this.settingsMap.containsKey(valueOf)) {
            return ((Setting) this.settingsMap.get(valueOf)).isPersist();
        }
        return false;
    }

    public void setPersistValue(int i, boolean z) {
        Integer valueOf = Integer.valueOf(i);
        if (this.settingsMap.containsKey(valueOf)) {
            ((Setting) this.settingsMap.get(valueOf)).setPersist(z);
        }
    }

    public boolean isPersisted(int i) {
        Integer valueOf = Integer.valueOf(i);
        if (this.settingsMap.containsKey(valueOf)) {
            return ((Setting) this.settingsMap.get(valueOf)).isPersisted();
        }
        return false;
    }

    public void setPersisted(int i, boolean z) {
        Integer valueOf = Integer.valueOf(i);
        if (this.settingsMap.containsKey(valueOf)) {
            ((Setting) this.settingsMap.get(valueOf)).setPersisted(z);
        }
    }

    public boolean clearPreviouslyPersistedSettings() {
        return this.clear;
    }

    public void setClearPreviouslyPersistedSettings(boolean z) {
        this.clear = z;
    }

    private Set<Entry<Integer, Setting>> getSettings() {
        return this.settingsMap.entrySet();
    }

    private void appendSettings(StringBuilder sb) {
        for (Entry entry : getSettings()) {
            Setting setting = (Setting) entry.getValue();
            sb.append("--> ");
            sb.append(((Integer) entry.getKey()).toString());
            sb.append(Http.PROTOCOL_PORT_SPLITTER);
            sb.append(setting.getValue());
            sb.append(" (persist value: ");
            sb.append(setting.isPersist());
            sb.append("; persisted: ");
            sb.append(setting.isPersisted());
            sb.append(')');
            sb.append(StringUtil.NEWLINE);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(StringUtil.NEWLINE);
        appendSettings(sb);
        sb.setLength(sb.length() - StringUtil.NEWLINE.length());
        return sb.toString();
    }
}
