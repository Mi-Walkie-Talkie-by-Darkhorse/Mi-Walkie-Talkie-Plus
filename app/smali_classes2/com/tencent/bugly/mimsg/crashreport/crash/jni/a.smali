.class public final Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

.field private final c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

.field private final d:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/mimsg/crashreport/common/info/a;Lcom/tencent/bugly/mimsg/crashreport/crash/b;Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    iput-object p2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iput-object p4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    return-void
.end method


# virtual methods
.method public final handleNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 21

    const-string v0, "Native Crash Happen v1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-virtual/range {v1 .. v19}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 19

    const-string v2, "Native Crash Happen v2"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "waiting for remote sync"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Lcom/tencent/bugly/mimsg/proguard/z;->b(J)V

    add-int/lit16 v2, v2, 0x1f4

    const/16 v3, 0xbb8

    if-lt v2, v3, :cond_0

    :cond_1
    invoke-static/range {p9 .. p9}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "UNKNOWN"

    if-lez p11, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    const-string p12, "KERNEL"

    move-object/from16 v11, p12

    move-object/from16 v8, p7

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "no remote but still store!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "NATIVE_CRASH"

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->a()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v4, v4, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    invoke-static/range {p10 .. p10}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-lez p13, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static/range {p13 .. p13}, Lcom/tencent/bugly/mimsg/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v12

    :cond_5
    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v11, p12

    move-object/from16 v8, p7

    goto/16 :goto_0

    :cond_6
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-eqz p18, :cond_8

    move-object/from16 v0, p18

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_9

    aget-object v4, p18, v2

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    const/4 v4, 0x0

    aget-object v4, v5, v4

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const-string v5, "bad extraMsg %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_8
    :try_start_1
    const-string v2, "not found extraMsg"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_9
    const-string v2, "ExceptionProcessName"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v4, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    :goto_4
    const-string v2, "ExceptionThreadName"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p3

    const-wide/16 v6, 0x3e8

    div-long v6, p5, v6

    add-long/2addr v6, v2

    const-string v2, "SysLogPath"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v3, p0

    move-object/from16 v9, p8

    move-object/from16 v13, p10

    move-object/from16 v15, p17

    invoke-virtual/range {v3 .. v18}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Z)Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;

    move-result-object v7

    if-nez v7, :cond_f

    const-string v2, "pkg crash datas fail!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    const-string v3, "crash process name change to %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v4, v2

    goto :goto_4

    :cond_d
    const-string v3, "crash thread name change to %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    :cond_f
    const-string v2, "NATIVE_CRASH"

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->a()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v4, v4, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v2 .. v7}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    move/from16 v0, p11

    invoke-virtual {v2, v7, v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;I)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    const-wide/16 v4, 0xbb8

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v4, v5, v3}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->a(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;JZ)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    invoke-virtual {v2, v7}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->b(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v2

    :cond_11
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/b;->a(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_12
    move-object v5, v2

    goto/16 :goto_5

    :cond_13
    move-object/from16 v11, p12

    move-object/from16 v8, p7

    goto/16 :goto_0
.end method

.method public final packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Z)Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->a()Lcom/tencent/bugly/mimsg/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    new-instance v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;

    invoke-direct {v3}, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;-><init>()V

    const/4 v4, 0x1

    iput v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->b:I

    iget-object v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v4, v4, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    iput-object p5, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    :goto_0
    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iput-object p6, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    if-nez p7, :cond_1

    const-string p7, ""

    :cond_1
    iput-object p7, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-wide p3, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->r:J

    iget-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/mimsg/proguard/z;->b([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iput-object p1, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    iput-object p2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->v()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->I()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    move-object/from16 v0, p10

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object/from16 v0, p10

    invoke-static {v2, v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iput-object v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    :cond_3
    invoke-static {v2}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    sget v2, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->e:I

    const/4 v4, 0x0

    move-object/from16 v0, p11

    invoke-static {v0, v2, v4}, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    iput-object p8, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->p()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->E:J

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->o()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->F:J

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->q()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->G:J

    if-eqz p15, :cond_9

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->g()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->B:J

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->e()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->i()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->D:J

    iget-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->a:Landroid/content/Context;

    sget v4, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->e:I

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    :cond_4
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/y;->a()[B

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->x:[B

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-wide v4, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a:J

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->L:J

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a()Z

    move-result v2

    iput-boolean v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->M:Z

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F()I

    move-result v2

    iput v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->O:I

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->G()I

    move-result v2

    iput v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->P:I

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->E()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    sget v2, Lcom/tencent/bugly/mimsg/crashreport/crash/c;->f:I

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/tencent/bugly/mimsg/proguard/z;->a(IZ)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    const-string v2, "java:\n"

    iget-object v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v4, v2

    iget-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_5

    iget-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v6, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v6, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v6, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    :cond_5
    if-nez p1, :cond_6

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    :cond_6
    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/mimsg/crashreport/crash/b;

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/mimsg/crashreport/crash/b;->c(Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;)V

    :cond_7
    :goto_1
    return-object v3

    :cond_8
    const-string v2, ""

    goto/16 :goto_0

    :cond_9
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->B:J

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->C:J

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->D:J

    iget-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    :cond_a
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->L:J

    const/4 v2, -0x1

    iput v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->O:I

    const/4 v2, -0x1

    iput v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->P:I

    move-object/from16 v0, p14

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->E()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    if-nez p1, :cond_b

    const-string v2, "unknown(record)"

    iput-object v2, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    :cond_b
    if-eqz p13, :cond_7

    move-object/from16 v0, p13

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->x:[B

    goto :goto_1
.end method
