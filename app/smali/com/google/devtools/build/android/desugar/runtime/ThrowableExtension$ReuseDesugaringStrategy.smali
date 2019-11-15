.class final Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ReuseDesugaringStrategy;
.super Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReuseDesugaringStrategy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public printStackTrace(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
