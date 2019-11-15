package android.support.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.util.Log;
import com.mi.milinkforgame.sdk.base.os.Http;
import com.mi.milinkforgame.sdk.util.FileUtils;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;
import org.apache.http.cookie.ClientCookie;

public final class MultiDex {
    private static final String CODE_CACHE_NAME = "code_cache";
    private static final String CODE_CACHE_SECONDARY_FOLDER_NAME = "secondary-dexes";
    private static final boolean IS_VM_MULTIDEX_CAPABLE = isVMMultidexCapable(System.getProperty("java.vm.version"));
    private static final int MAX_SUPPORTED_SDK_VERSION = 20;
    private static final int MIN_SDK_VERSION = 4;
    private static final String NO_KEY_PREFIX = "";
    private static final String OLD_SECONDARY_FOLDER_NAME = "secondary-dexes";
    static final String TAG = "MultiDex";
    private static final int VM_WITH_MULTIDEX_VERSION_MAJOR = 2;
    private static final int VM_WITH_MULTIDEX_VERSION_MINOR = 1;
    private static final Set<File> installedApk = new HashSet();

    private static final class V14 {
        private static final int EXTRACTED_SUFFIX_LENGTH = FileUtils.ZIP_FILE_EXT.length();
        private final ElementConstructor elementConstructor;

        private interface ElementConstructor {
            Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException;
        }

        private static class ICSElementConstructor implements ElementConstructor {
            private final Constructor<?> elementConstructor;

            ICSElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = cls.getConstructor(new Class[]{File.class, ZipFile.class, DexFile.class});
                this.elementConstructor.setAccessible(true);
            }

            public Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException {
                return this.elementConstructor.newInstance(new Object[]{file, new ZipFile(file), dexFile});
            }
        }

        private static class JBMR11ElementConstructor implements ElementConstructor {
            private final Constructor<?> elementConstructor;

            JBMR11ElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = cls.getConstructor(new Class[]{File.class, File.class, DexFile.class});
                this.elementConstructor.setAccessible(true);
            }

            public Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.elementConstructor.newInstance(new Object[]{file, file, dexFile});
            }
        }

        private static class JBMR2ElementConstructor implements ElementConstructor {
            private final Constructor<?> elementConstructor;

            JBMR2ElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = cls.getConstructor(new Class[]{File.class, Boolean.TYPE, File.class, DexFile.class});
                this.elementConstructor.setAccessible(true);
            }

            public Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.elementConstructor.newInstance(new Object[]{file, Boolean.FALSE, file, dexFile});
            }
        }

        static void install(ClassLoader classLoader, List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchFieldException {
            Object obj = MultiDex.findField(classLoader, "pathList").get(classLoader);
            Object[] makeDexElements = new V14().makeDexElements(list);
            try {
                MultiDex.expandFieldArray(obj, "dexElements", makeDexElements);
            } catch (NoSuchFieldException e) {
                Log.w(MultiDex.TAG, "Failed find field 'dexElements' attempting 'pathElements'", e);
                MultiDex.expandFieldArray(obj, "pathElements", makeDexElements);
            }
        }

        private V14() throws ClassNotFoundException, SecurityException, NoSuchMethodException {
            ElementConstructor jBMR2ElementConstructor;
            Class cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                jBMR2ElementConstructor = new ICSElementConstructor(cls);
            } catch (NoSuchMethodException e) {
                try {
                    jBMR2ElementConstructor = new JBMR11ElementConstructor(cls);
                } catch (NoSuchMethodException e2) {
                    jBMR2ElementConstructor = new JBMR2ElementConstructor(cls);
                }
            }
            this.elementConstructor = jBMR2ElementConstructor;
        }

        private Object[] makeDexElements(List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
            Object[] objArr = new Object[list.size()];
            for (int i = 0; i < objArr.length; i++) {
                File file = (File) list.get(i);
                objArr[i] = this.elementConstructor.newInstance(file, DexFile.loadDex(file.getPath(), optimizedPathFor(file), 0));
            }
            return objArr;
        }

        private static String optimizedPathFor(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - EXTRACTED_SUFFIX_LENGTH) + ".dex").getPath();
        }
    }

    private static final class V19 {
        private V19() {
        }

        static void install(ClassLoader classLoader, List<? extends File> list, File file) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException {
            IOException[] iOExceptionArr;
            Object obj = MultiDex.findField(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            MultiDex.expandFieldArray(obj, "dexElements", makeDexElements(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w(MultiDex.TAG, "Exception in makeDexElement", (IOException) it.next());
                }
                Field access$000 = MultiDex.findField(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) access$000.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[(arrayList.size() + iOExceptionArr2.length)];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                access$000.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }

        private static Object[] makeDexElements(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
            return (Object[]) MultiDex.findMethod(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, new Object[]{arrayList, file, arrayList2});
        }
    }

    private static final class V4 {
        private V4() {
        }

        static void install(ClassLoader classLoader, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException {
            int size = list.size();
            Field access$000 = MultiDex.findField(classLoader, ClientCookie.PATH_ATTR);
            StringBuilder sb = new StringBuilder((String) access$000.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File file = (File) listIterator.next();
                String absolutePath = file.getAbsolutePath();
                sb.append(Http.PROTOCOL_PORT_SPLITTER).append(absolutePath);
                int previousIndex = listIterator.previousIndex();
                strArr[previousIndex] = absolutePath;
                fileArr[previousIndex] = file;
                zipFileArr[previousIndex] = new ZipFile(file);
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            access$000.set(classLoader, sb.toString());
            MultiDex.expandFieldArray(classLoader, "mPaths", strArr);
            MultiDex.expandFieldArray(classLoader, "mFiles", fileArr);
            MultiDex.expandFieldArray(classLoader, "mZips", zipFileArr);
            MultiDex.expandFieldArray(classLoader, "mDexs", dexFileArr);
        }
    }

    private MultiDex() {
    }

    public static void install(Context context) {
        Log.i(TAG, "Installing application");
        if (IS_VM_MULTIDEX_CAPABLE) {
            Log.i(TAG, "VM has multidex support, MultiDex support library is disabled.");
        } else if (VERSION.SDK_INT < 4) {
            throw new RuntimeException("MultiDex installation failed. SDK " + VERSION.SDK_INT + " is unsupported. Min SDK version is " + 4 + ".");
        } else {
            try {
                ApplicationInfo applicationInfo = getApplicationInfo(context);
                if (applicationInfo == null) {
                    Log.i(TAG, "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                }
                doInstallation(context, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir), "secondary-dexes", "", true);
                Log.i(TAG, "install done");
            } catch (Exception e) {
                Log.e(TAG, "MultiDex installation failure", e);
                throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
            }
        }
    }

    public static void installInstrumentation(Context context, Context context2) {
        Log.i(TAG, "Installing instrumentation");
        if (IS_VM_MULTIDEX_CAPABLE) {
            Log.i(TAG, "VM has multidex support, MultiDex support library is disabled.");
        } else if (VERSION.SDK_INT < 4) {
            throw new RuntimeException("MultiDex installation failed. SDK " + VERSION.SDK_INT + " is unsupported. Min SDK version is " + 4 + ".");
        } else {
            try {
                ApplicationInfo applicationInfo = getApplicationInfo(context);
                if (applicationInfo == null) {
                    Log.i(TAG, "No ApplicationInfo available for instrumentation, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                }
                ApplicationInfo applicationInfo2 = getApplicationInfo(context2);
                if (applicationInfo2 == null) {
                    Log.i(TAG, "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                }
                String str = context.getPackageName() + ".";
                File file = new File(applicationInfo2.dataDir);
                doInstallation(context2, new File(applicationInfo.sourceDir), file, str + "secondary-dexes", str, false);
                doInstallation(context2, new File(applicationInfo2.sourceDir), file, "secondary-dexes", "", false);
                Log.i(TAG, "Installation done");
            } catch (Exception e) {
                Log.e(TAG, "MultiDex installation failure", e);
                throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
            }
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void doInstallation(android.content.Context r8, java.io.File r9, java.io.File r10, java.lang.String r11, java.lang.String r12, boolean r13) throws java.io.IOException, java.lang.IllegalArgumentException, java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.reflect.InvocationTargetException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.ClassNotFoundException, java.lang.InstantiationException {
        /*
            r2 = 20
            java.util.Set<java.io.File> r1 = installedApk
            monitor-enter(r1)
            java.util.Set<java.io.File> r0 = installedApk     // Catch:{ all -> 0x006f }
            boolean r0 = r0.contains(r9)     // Catch:{ all -> 0x006f }
            if (r0 == 0) goto L_0x000f
            monitor-exit(r1)     // Catch:{ all -> 0x006f }
        L_0x000e:
            return
        L_0x000f:
            java.util.Set<java.io.File> r0 = installedApk     // Catch:{ all -> 0x006f }
            r0.add(r9)     // Catch:{ all -> 0x006f }
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x006f }
            if (r0 <= r2) goto L_0x0060
            java.lang.String r0 = "MultiDex"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x006f }
            r2.<init>()     // Catch:{ all -> 0x006f }
            java.lang.String r3 = "MultiDex is not guaranteed to work in SDK version "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x006f }
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x006f }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x006f }
            java.lang.String r3 = ": SDK version higher than "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x006f }
            r3 = 20
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x006f }
            java.lang.String r3 = " should be backed by "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x006f }
            java.lang.String r3 = "runtime with built-in multidex capabilty but it's not the "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x006f }
            java.lang.String r3 = "case here: java.vm.version=\""
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x006f }
            java.lang.String r3 = "java.vm.version"
            java.lang.String r3 = java.lang.System.getProperty(r3)     // Catch:{ all -> 0x006f }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x006f }
            java.lang.String r3 = "\""
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x006f }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x006f }
            android.util.Log.w(r0, r2)     // Catch:{ all -> 0x006f }
        L_0x0060:
            java.lang.ClassLoader r2 = r8.getClassLoader()     // Catch:{ RuntimeException -> 0x0072 }
            if (r2 != 0) goto L_0x007c
            java.lang.String r0 = "MultiDex"
            java.lang.String r2 = "Context class loader is null. Must be running in test mode. Skip patching."
            android.util.Log.e(r0, r2)     // Catch:{ all -> 0x006f }
            monitor-exit(r1)     // Catch:{ all -> 0x006f }
            goto L_0x000e
        L_0x006f:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x006f }
            throw r0
        L_0x0072:
            r0 = move-exception
            java.lang.String r2 = "MultiDex"
            java.lang.String r3 = "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching."
            android.util.Log.w(r2, r3, r0)     // Catch:{ all -> 0x006f }
            monitor-exit(r1)     // Catch:{ all -> 0x006f }
            goto L_0x000e
        L_0x007c:
            clearOldDexDir(r8)     // Catch:{ Throwable -> 0x0097 }
        L_0x007f:
            java.io.File r3 = getDexDir(r8, r10, r11)     // Catch:{ all -> 0x006f }
            android.support.multidex.MultiDexExtractor r4 = new android.support.multidex.MultiDexExtractor     // Catch:{ all -> 0x006f }
            r4.<init>(r9, r3)     // Catch:{ all -> 0x006f }
            r0 = 0
            r5 = 0
            java.util.List r5 = r4.load(r8, r12, r5)     // Catch:{ all -> 0x00a4 }
            installSecondaryDexes(r2, r3, r5)     // Catch:{ IOException -> 0x00a0 }
        L_0x0091:
            r4.close()     // Catch:{ IOException -> 0x00bc }
        L_0x0094:
            if (r0 == 0) goto L_0x00b9
            throw r0     // Catch:{ all -> 0x006f }
        L_0x0097:
            r0 = move-exception
            java.lang.String r3 = "MultiDex"
            java.lang.String r4 = "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning."
            android.util.Log.w(r3, r4, r0)     // Catch:{ all -> 0x006f }
            goto L_0x007f
        L_0x00a0:
            r5 = move-exception
            if (r13 != 0) goto L_0x00a9
            throw r5     // Catch:{ all -> 0x00a4 }
        L_0x00a4:
            r0 = move-exception
            r4.close()     // Catch:{ IOException -> 0x00be }
        L_0x00a8:
            throw r0     // Catch:{ all -> 0x006f }
        L_0x00a9:
            java.lang.String r6 = "MultiDex"
            java.lang.String r7 = "Failed to install extracted secondary dex files, retrying with forced extraction"
            android.util.Log.w(r6, r7, r5)     // Catch:{ all -> 0x00a4 }
            r5 = 1
            java.util.List r5 = r4.load(r8, r12, r5)     // Catch:{ all -> 0x00a4 }
            installSecondaryDexes(r2, r3, r5)     // Catch:{ all -> 0x00a4 }
            goto L_0x0091
        L_0x00b9:
            monitor-exit(r1)     // Catch:{ all -> 0x006f }
            goto L_0x000e
        L_0x00bc:
            r0 = move-exception
            goto L_0x0094
        L_0x00be:
            r2 = move-exception
            goto L_0x00a8
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.multidex.MultiDex.doInstallation(android.content.Context, java.io.File, java.io.File, java.lang.String, java.lang.String, boolean):void");
    }

    private static ApplicationInfo getApplicationInfo(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException e) {
            Log.w(TAG, "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e);
            return null;
        }
    }

    static boolean isVMMultidexCapable(String str) {
        boolean z = false;
        if (str != null) {
            Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(str);
            if (matcher.matches()) {
                try {
                    int parseInt = Integer.parseInt(matcher.group(1));
                    int parseInt2 = Integer.parseInt(matcher.group(2));
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException e) {
                }
            }
        }
        Log.i(TAG, "VM with version " + str + (z ? " has multidex support" : " does not have multidex support"));
        return z;
    }

    private static void installSecondaryDexes(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException, SecurityException, ClassNotFoundException, InstantiationException {
        if (list.isEmpty()) {
            return;
        }
        if (VERSION.SDK_INT >= 19) {
            V19.install(classLoader, list, file);
        } else if (VERSION.SDK_INT >= 14) {
            V14.install(classLoader, list);
        } else {
            V4.install(classLoader, list);
        }
    }

    /* access modifiers changed from: private */
    public static Field findField(Object obj, String str) throws NoSuchFieldException {
        Class cls = obj.getClass();
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    /* access modifiers changed from: private */
    public static Method findMethod(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
        Class cls = obj.getClass();
        while (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    /* access modifiers changed from: private */
    public static void expandFieldArray(Object obj, String str, Object[] objArr) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Field findField = findField(obj, str);
        Object[] objArr2 = (Object[]) findField.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        findField.set(obj, objArr3);
    }

    private static void clearOldDexDir(Context context) throws Exception {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            Log.i(TAG, "Clearing old secondary dex dir (" + file.getPath() + ").");
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                Log.w(TAG, "Failed to list secondary dex dir content (" + file.getPath() + ").");
                return;
            }
            for (File file2 : listFiles) {
                Log.i(TAG, "Trying to delete old file " + file2.getPath() + " of size " + file2.length());
                if (!file2.delete()) {
                    Log.w(TAG, "Failed to delete old file " + file2.getPath());
                } else {
                    Log.i(TAG, "Deleted old file " + file2.getPath());
                }
            }
            if (!file.delete()) {
                Log.w(TAG, "Failed to delete secondary dex dir " + file.getPath());
            } else {
                Log.i(TAG, "Deleted old secondary dex dir " + file.getPath());
            }
        }
    }

    private static File getDexDir(Context context, File file, String str) throws IOException {
        File file2 = new File(file, CODE_CACHE_NAME);
        try {
            mkdirChecked(file2);
        } catch (IOException e) {
            file2 = new File(context.getFilesDir(), CODE_CACHE_NAME);
            mkdirChecked(file2);
        }
        File file3 = new File(file2, str);
        mkdirChecked(file3);
        return file3;
    }

    private static void mkdirChecked(File file) throws IOException {
        file.mkdir();
        if (!file.isDirectory()) {
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                Log.e(TAG, "Failed to create dir " + file.getPath() + ". Parent file is null.");
            } else {
                Log.e(TAG, "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite());
            }
            throw new IOException("Failed to create directory " + file.getPath());
        }
    }
}
