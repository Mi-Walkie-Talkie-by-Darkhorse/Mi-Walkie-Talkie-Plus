.class public Lcom/xiaomi/smack/l;
.super Ljava/lang/Exception;


# instance fields
.field private a:Lcom/xiaomi/smack/packet/g;

.field private b:Lcom/xiaomi/smack/packet/h;

.field private c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/l;->a:Lcom/xiaomi/smack/packet/g;

    iput-object v0, p0, Lcom/xiaomi/smack/l;->b:Lcom/xiaomi/smack/packet/h;

    iput-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smack/packet/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/l;->a:Lcom/xiaomi/smack/packet/g;

    iput-object v0, p0, Lcom/xiaomi/smack/l;->b:Lcom/xiaomi/smack/packet/h;

    iput-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/xiaomi/smack/l;->a:Lcom/xiaomi/smack/packet/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/smack/l;->a:Lcom/xiaomi/smack/packet/g;

    iput-object v0, p0, Lcom/xiaomi/smack/l;->b:Lcom/xiaomi/smack/packet/h;

    iput-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/smack/l;->a:Lcom/xiaomi/smack/packet/g;

    iput-object v0, p0, Lcom/xiaomi/smack/l;->b:Lcom/xiaomi/smack/packet/h;

    iput-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/l;->a:Lcom/xiaomi/smack/packet/g;

    iput-object v0, p0, Lcom/xiaomi/smack/l;->b:Lcom/xiaomi/smack/packet/h;

    iput-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/smack/l;->b:Lcom/xiaomi/smack/packet/h;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smack/l;->b:Lcom/xiaomi/smack/packet/h;

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/h;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/l;->a:Lcom/xiaomi/smack/packet/g;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/l;->a:Lcom/xiaomi/smack/packet/g;

    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/g;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public printStackTrace()V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smack/l;->b:Lcom/xiaomi/smack/packet/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/smack/l;->b:Lcom/xiaomi/smack/packet/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/smack/l;->a:Lcom/xiaomi/smack/packet/g;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/smack/l;->a:Lcom/xiaomi/smack/packet/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    const-string v1, "\n  -- caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/l;->c:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
