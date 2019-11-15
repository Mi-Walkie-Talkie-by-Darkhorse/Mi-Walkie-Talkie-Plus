package com.mi.milinkforgame.sdk.base.os;

import java.io.InputStream;

public class Console extends Thread {
    private static final long CONSOLE_STREAM_READER_TIMEOUT = 1000;

    public static class ConsoleReader extends Thread {
        private String outputData;
        private InputStream stream = null;

        public ConsoleReader(InputStream inputStream) {
            setStream(inputStream);
        }

        /* JADX WARNING: Removed duplicated region for block: B:17:0x0038 A[SYNTHETIC, Splitter:B:17:0x0038] */
        /* JADX WARNING: Removed duplicated region for block: B:22:0x0041 A[SYNTHETIC, Splitter:B:22:0x0041] */
        /* JADX WARNING: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r6 = this;
                r1 = 0
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch:{ Exception -> 0x0030, all -> 0x003e }
                java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch:{ Exception -> 0x0030, all -> 0x003e }
                java.io.InputStream r4 = r6.stream     // Catch:{ Exception -> 0x0030, all -> 0x003e }
                r3.<init>(r4)     // Catch:{ Exception -> 0x0030, all -> 0x003e }
                r0.<init>(r3)     // Catch:{ Exception -> 0x0030, all -> 0x003e }
                java.lang.String r1 = r0.readLine()     // Catch:{ Exception -> 0x004e }
            L_0x0016:
                if (r1 == 0) goto L_0x0020
                r2.append(r1)     // Catch:{ Exception -> 0x004e }
                java.lang.String r1 = r0.readLine()     // Catch:{ Exception -> 0x004e }
                goto L_0x0016
            L_0x0020:
                r0.close()     // Catch:{ Exception -> 0x004e }
                java.lang.String r1 = r2.toString()     // Catch:{ Exception -> 0x004e }
                r6.setOutputData(r1)     // Catch:{ Exception -> 0x004e }
                if (r0 == 0) goto L_0x002f
                r0.close()     // Catch:{ IOException -> 0x0045 }
            L_0x002f:
                return
            L_0x0030:
                r0 = move-exception
                r0 = r1
            L_0x0032:
                r1 = 0
                r6.setOutputData(r1)     // Catch:{ all -> 0x0049 }
                if (r0 == 0) goto L_0x002f
                r0.close()     // Catch:{ IOException -> 0x003c }
                goto L_0x002f
            L_0x003c:
                r0 = move-exception
                goto L_0x002f
            L_0x003e:
                r0 = move-exception
            L_0x003f:
                if (r1 == 0) goto L_0x0044
                r1.close()     // Catch:{ IOException -> 0x0047 }
            L_0x0044:
                throw r0
            L_0x0045:
                r0 = move-exception
                goto L_0x002f
            L_0x0047:
                r1 = move-exception
                goto L_0x0044
            L_0x0049:
                r1 = move-exception
                r5 = r1
                r1 = r0
                r0 = r5
                goto L_0x003f
            L_0x004e:
                r1 = move-exception
                goto L_0x0032
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.base.os.Console.ConsoleReader.run():void");
        }

        public void setStream(InputStream inputStream) {
            this.stream = inputStream;
        }

        public InputStream getStream() {
            return this.stream;
        }

        public String getOutputData() {
            return this.outputData;
        }

        public void setOutputData(String str) {
            this.outputData = str;
        }
    }

    public static class ConsoleThread extends Thread {
        private String command = null;
        private Integer exitCode = Integer.valueOf(0);
        private String outputData = null;
        private long timeout = 1000;

        public ConsoleThread(String str, long j) {
            setCommand(str);
            setTimeout(j);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
            setExitCode(java.lang.Integer.valueOf(Integer.MAX_VALUE));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
            setExitCode(java.lang.Integer.valueOf(Integer.MIN_VALUE));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Removed duplicated region for block: B:10:0x003c A[ExcHandler: IOException (e java.io.IOException), Splitter:B:0:0x0000] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r6 = this;
                java.lang.Runtime r0 = java.lang.Runtime.getRuntime()     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                java.lang.String r1 = r6.getCommand()     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                java.lang.Process r0 = r0.exec(r1)     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                int r1 = r0.waitFor()     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                com.mi.milinkforgame.sdk.base.os.Console$ConsoleReader r2 = new com.mi.milinkforgame.sdk.base.os.Console$ConsoleReader     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                java.io.InputStream r3 = r0.getInputStream()     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                r2.<init>(r3)     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                r2.start()     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                r4 = 1000(0x3e8, double:4.94E-321)
                r2.join(r4)     // Catch:{ InterruptedException -> 0x0055, IOException -> 0x003c }
            L_0x0021:
                boolean r3 = r2.isAlive()     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                if (r3 == 0) goto L_0x002a
                r2.interrupt()     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
            L_0x002a:
                java.lang.String r2 = r2.getOutputData()     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                r6.setExitCode(r1)     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                r6.setOutputData(r2)     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
                r0.destroy()     // Catch:{ IOException -> 0x003c, InterruptedException -> 0x004a }
            L_0x003b:
                return
            L_0x003c:
                r0 = move-exception
                r0 = 2147483647(0x7fffffff, float:NaN)
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ all -> 0x0048 }
                r6.setExitCode(r0)     // Catch:{ all -> 0x0048 }
                goto L_0x003b
            L_0x0048:
                r0 = move-exception
                throw r0
            L_0x004a:
                r0 = move-exception
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ all -> 0x0048 }
                r6.setExitCode(r0)     // Catch:{ all -> 0x0048 }
                goto L_0x003b
            L_0x0055:
                r3 = move-exception
                goto L_0x0021
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.base.os.Console.ConsoleThread.run():void");
        }

        public String getCommand() {
            return this.command;
        }

        public void setCommand(String str) {
            this.command = str;
        }

        public Integer getExitCode() {
            return this.exitCode;
        }

        public void setExitCode(Integer num) {
            this.exitCode = num;
        }

        public String getOutputData() {
            return this.outputData;
        }

        public void setOutputData(String str) {
            this.outputData = str;
        }

        public void setTimeout(long j) {
            this.timeout = j;
        }
    }

    public static String execute(String str, long j) {
        return execute(str, j, 1000);
    }

    public static String execute(String str, long j, long j2) {
        ConsoleThread consoleThread = new ConsoleThread(str, j2);
        consoleThread.start();
        try {
            consoleThread.join(j);
        } catch (InterruptedException e) {
        }
        if (consoleThread.isAlive()) {
            consoleThread.interrupt();
        }
        return consoleThread.getOutputData();
    }
}
