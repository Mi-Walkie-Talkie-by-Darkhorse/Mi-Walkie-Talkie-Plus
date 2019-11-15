package org.bouncycastle.i18n;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.Format;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.TimeZone;
import org.bouncycastle.i18n.filter.Filter;
import org.bouncycastle.i18n.filter.TrustedInput;
import org.bouncycastle.i18n.filter.UntrustedInput;
import org.bouncycastle.i18n.filter.UntrustedUrlInput;

public class LocalizedMessage {
    public static final String DEFAULT_ENCODING = "ISO-8859-1";
    protected FilteredArguments arguments;
    protected String encoding = "ISO-8859-1";
    protected FilteredArguments extraArgs = null;
    protected Filter filter = null;
    protected final String id;
    protected ClassLoader loader = null;
    protected final String resource;

    protected class FilteredArguments {
        protected static final int FILTER = 1;
        protected static final int FILTER_URL = 2;
        protected static final int NO_FILTER = 0;
        protected int[] argFilterType;
        protected Object[] arguments;
        protected Filter filter;
        protected Object[] filteredArgs;
        protected boolean[] isLocaleSpecific;
        protected Object[] unpackedArgs;

        FilteredArguments(LocalizedMessage localizedMessage) {
            this(new Object[0]);
        }

        FilteredArguments(Object[] objArr) {
            this.filter = null;
            this.arguments = objArr;
            this.unpackedArgs = new Object[objArr.length];
            this.filteredArgs = new Object[objArr.length];
            this.isLocaleSpecific = new boolean[objArr.length];
            this.argFilterType = new int[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] instanceof TrustedInput) {
                    this.unpackedArgs[i] = objArr[i].getInput();
                    this.argFilterType[i] = 0;
                } else if (objArr[i] instanceof UntrustedInput) {
                    this.unpackedArgs[i] = objArr[i].getInput();
                    if (objArr[i] instanceof UntrustedUrlInput) {
                        this.argFilterType[i] = 2;
                    } else {
                        this.argFilterType[i] = 1;
                    }
                } else {
                    this.unpackedArgs[i] = objArr[i];
                    this.argFilterType[i] = 1;
                }
                this.isLocaleSpecific[i] = this.unpackedArgs[i] instanceof LocaleString;
            }
        }

        private Object filter(int i, Object obj) {
            if (this.filter == null) {
                return obj;
            }
            if (obj == null) {
                obj = "null";
            }
            switch (i) {
                case 0:
                    return obj;
                case 1:
                    return this.filter.doFilter(obj.toString());
                case 2:
                    return this.filter.doFilterUrl(obj.toString());
                default:
                    return null;
            }
        }

        public Object[] getArguments() {
            return this.arguments;
        }

        public Filter getFilter() {
            return this.filter;
        }

        public Object[] getFilteredArgs(Locale locale) {
            Object filter2;
            Object[] objArr = new Object[this.unpackedArgs.length];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.unpackedArgs.length) {
                    return objArr;
                }
                if (this.filteredArgs[i2] != null) {
                    filter2 = this.filteredArgs[i2];
                } else {
                    Object obj = this.unpackedArgs[i2];
                    if (this.isLocaleSpecific[i2]) {
                        filter2 = filter(this.argFilterType[i2], ((LocaleString) obj).getLocaleString(locale));
                    } else {
                        filter2 = filter(this.argFilterType[i2], obj);
                        this.filteredArgs[i2] = filter2;
                    }
                }
                objArr[i2] = filter2;
                i = i2 + 1;
            }
        }

        public boolean isEmpty() {
            return this.unpackedArgs.length == 0;
        }

        public void setFilter(Filter filter2) {
            if (filter2 != this.filter) {
                for (int i = 0; i < this.unpackedArgs.length; i++) {
                    this.filteredArgs[i] = null;
                }
            }
            this.filter = filter2;
        }
    }

    public LocalizedMessage(String str, String str2) throws NullPointerException {
        if (str == null || str2 == null) {
            throw new NullPointerException();
        }
        this.id = str2;
        this.resource = str;
        this.arguments = new FilteredArguments(this);
    }

    public LocalizedMessage(String str, String str2, String str3) throws NullPointerException, UnsupportedEncodingException {
        if (str == null || str2 == null) {
            throw new NullPointerException();
        }
        this.id = str2;
        this.resource = str;
        this.arguments = new FilteredArguments(this);
        if (!Charset.isSupported(str3)) {
            throw new UnsupportedEncodingException("The encoding \"" + str3 + "\" is not supported.");
        }
        this.encoding = str3;
    }

    public LocalizedMessage(String str, String str2, String str3, Object[] objArr) throws NullPointerException, UnsupportedEncodingException {
        if (str == null || str2 == null || objArr == null) {
            throw new NullPointerException();
        }
        this.id = str2;
        this.resource = str;
        this.arguments = new FilteredArguments(objArr);
        if (!Charset.isSupported(str3)) {
            throw new UnsupportedEncodingException("The encoding \"" + str3 + "\" is not supported.");
        }
        this.encoding = str3;
    }

    public LocalizedMessage(String str, String str2, Object[] objArr) throws NullPointerException {
        if (str == null || str2 == null || objArr == null) {
            throw new NullPointerException();
        }
        this.id = str2;
        this.resource = str;
        this.arguments = new FilteredArguments(objArr);
    }

    /* access modifiers changed from: protected */
    public String addExtraArgs(String str, Locale locale) {
        if (this.extraArgs == null) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        Object[] filteredArgs = this.extraArgs.getFilteredArgs(locale);
        for (Object append : filteredArgs) {
            stringBuffer.append(append);
        }
        return stringBuffer.toString();
    }

    /* access modifiers changed from: protected */
    public String formatWithTimeZone(String str, Object[] objArr, Locale locale, TimeZone timeZone) {
        MessageFormat messageFormat = new MessageFormat(Token.SEPARATOR);
        messageFormat.setLocale(locale);
        messageFormat.applyPattern(str);
        if (!timeZone.equals(TimeZone.getDefault())) {
            Format[] formats = messageFormat.getFormats();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= formats.length) {
                    break;
                }
                if (formats[i2] instanceof DateFormat) {
                    DateFormat dateFormat = (DateFormat) formats[i2];
                    dateFormat.setTimeZone(timeZone);
                    messageFormat.setFormat(i2, dateFormat);
                }
                i = i2 + 1;
            }
        }
        return messageFormat.format(objArr);
    }

    public Object[] getArguments() {
        return this.arguments.getArguments();
    }

    public ClassLoader getClassLoader() {
        return this.loader;
    }

    public String getEntry(String str, Locale locale, TimeZone timeZone) throws MissingEntryException {
        String str2 = this.id;
        if (str != null) {
            str2 = str2 + "." + str;
        }
        try {
            String string = (this.loader == null ? ResourceBundle.getBundle(this.resource, locale) : ResourceBundle.getBundle(this.resource, locale, this.loader)).getString(str2);
            String str3 = !this.encoding.equals("ISO-8859-1") ? new String(string.getBytes("ISO-8859-1"), this.encoding) : string;
            if (!this.arguments.isEmpty()) {
                str3 = formatWithTimeZone(str3, this.arguments.getFilteredArgs(locale), locale, timeZone);
            }
            return addExtraArgs(str3, locale);
        } catch (MissingResourceException e) {
            throw new MissingEntryException("Can't find entry " + str2 + " in resource file " + this.resource + ".", this.resource, str2, locale, this.loader != null ? this.loader : getClassLoader());
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public Object[] getExtraArgs() {
        if (this.extraArgs == null) {
            return null;
        }
        return this.extraArgs.getArguments();
    }

    public Filter getFilter() {
        return this.filter;
    }

    public String getId() {
        return this.id;
    }

    public String getResource() {
        return this.resource;
    }

    public void setClassLoader(ClassLoader classLoader) {
        this.loader = classLoader;
    }

    public void setExtraArgument(Object obj) {
        setExtraArguments(new Object[]{obj});
    }

    public void setExtraArguments(Object[] objArr) {
        if (objArr != null) {
            this.extraArgs = new FilteredArguments(objArr);
            this.extraArgs.setFilter(this.filter);
            return;
        }
        this.extraArgs = null;
    }

    public void setFilter(Filter filter2) {
        this.arguments.setFilter(filter2);
        if (this.extraArgs != null) {
            this.extraArgs.setFilter(filter2);
        }
        this.filter = filter2;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Resource: \"").append(this.resource);
        stringBuffer.append("\" Id: \"").append(this.id).append("\"");
        stringBuffer.append(" Arguments: ").append(this.arguments.getArguments().length).append(" normal");
        if (this.extraArgs != null && this.extraArgs.getArguments().length > 0) {
            stringBuffer.append(", ").append(this.extraArgs.getArguments().length).append(" extra");
        }
        stringBuffer.append(" Encoding: ").append(this.encoding);
        stringBuffer.append(" ClassLoader: ").append(this.loader);
        return stringBuffer.toString();
    }
}
