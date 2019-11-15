.class public final Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;
.super Ljava/lang/Object;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;,
        Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;,
        Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;,
        Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ReuseDesugaringStrategy;,
        Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
    }
.end annotation


# static fields
.field private static final ANDROID_OS_BUILD_VERSION:Ljava/lang/String; = "android.os.Build$VERSION"

.field static final STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

.field public static final SYSTEM_PROPERTY_TWR_DISABLE_MIMIC:Ljava/lang/String; = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->readApiLevelFromBuildVersion()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ReuseDesugaringStrategy;

    invoke-direct {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ReuseDesugaringStrategy;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->useMimicStrategy()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;

    invoke-direct {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error has occured when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "will be used. The error is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;

    invoke-direct {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;-><init>()V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;

    invoke-direct {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0, p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getStrategy()Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
    .locals 1

    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    return-object v0
.end method

.method public static getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;->getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 1

    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0, p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 1

    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0, p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static readApiLevelFromBuildVersion()Ljava/lang/Integer;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.os.Build$VERSION"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "SDK_INT"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static useMimicStrategy()Z
    .locals 1

    const-string v0, "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
