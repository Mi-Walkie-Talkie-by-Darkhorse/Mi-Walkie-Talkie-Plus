.class public Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;
.super Ljava/lang/Object;
.source "SafeStringQueue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public addToBuffer(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public getBufferSize()I
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public writeAndFlush(Ljava/io/Writer;[C)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v6, p2

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v5

    move v3, v6

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v4, v1

    move v8, v5

    :goto_2
    if-lez v2, :cond_3

    if-le v3, v2, :cond_2

    move v1, v2

    :goto_3
    add-int v7, v8, v1

    invoke-virtual {v0, v8, v7, p2, v4}, Ljava/lang/String;->getChars(II[CI)V

    sub-int v7, v3, v1

    add-int v3, v4, v1

    sub-int/2addr v2, v1

    add-int/2addr v1, v8

    if-nez v7, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, v6}, Ljava/io/Writer;->write([CII)V

    move v4, v5

    move v3, v6

    move v8, v1

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    if-lez v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/Writer;->write([CII)V

    :cond_5
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    move v4, v3

    move v8, v1

    move v3, v7

    goto :goto_2
.end method
