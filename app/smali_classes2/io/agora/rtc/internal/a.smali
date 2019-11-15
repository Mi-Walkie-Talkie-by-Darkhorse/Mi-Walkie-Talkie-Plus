.class public Lio/agora/rtc/internal/a;
.super Ljava/lang/Object;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/a$d;,
        Lio/agora/rtc/internal/a$e;,
        Lio/agora/rtc/internal/a$g;,
        Lio/agora/rtc/internal/a$c;,
        Lio/agora/rtc/internal/a$f;,
        Lio/agora/rtc/internal/a$h;,
        Lio/agora/rtc/internal/a$b;,
        Lio/agora/rtc/internal/a$i;,
        Lio/agora/rtc/internal/a$a;
    }
.end annotation


# instance fields
.field private A:Landroid/bluetooth/BluetoothHeadset;

.field private B:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lio/agora/rtc/internal/a$h;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/agora/rtc/internal/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lio/agora/rtc/internal/a$f;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:I

.field private final w:Ljava/lang/Runnable;

.field private x:Lio/agora/rtc/internal/a$i;

.field private y:Lio/agora/rtc/internal/a$b;

.field private z:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/agora/rtc/internal/a$a;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lio/agora/rtc/internal/a;->e:Z

    iput v0, p0, Lio/agora/rtc/internal/a;->f:I

    iput-boolean v1, p0, Lio/agora/rtc/internal/a;->g:Z

    iput-boolean v1, p0, Lio/agora/rtc/internal/a;->h:Z

    iput v0, p0, Lio/agora/rtc/internal/a;->i:I

    iput v0, p0, Lio/agora/rtc/internal/a;->j:I

    iput v0, p0, Lio/agora/rtc/internal/a;->k:I

    iput v2, p0, Lio/agora/rtc/internal/a;->l:I

    iput-boolean v2, p0, Lio/agora/rtc/internal/a;->m:Z

    iput-boolean v1, p0, Lio/agora/rtc/internal/a;->n:Z

    iput-boolean v1, p0, Lio/agora/rtc/internal/a;->o:Z

    iput v0, p0, Lio/agora/rtc/internal/a;->p:I

    iput-boolean v1, p0, Lio/agora/rtc/internal/a;->q:Z

    iput-boolean v1, p0, Lio/agora/rtc/internal/a;->r:Z

    iput-boolean v1, p0, Lio/agora/rtc/internal/a;->s:Z

    const/4 v0, 0x3

    iput v0, p0, Lio/agora/rtc/internal/a;->t:I

    iput-boolean v1, p0, Lio/agora/rtc/internal/a;->u:Z

    new-instance v0, Lio/agora/rtc/internal/a$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/internal/a$1;-><init>(Lio/agora/rtc/internal/a;)V

    iput-object v0, p0, Lio/agora/rtc/internal/a;->w:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/internal/a;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/internal/a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lio/agora/rtc/internal/a;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/a;->v:I

    return p1
.end method

.method static synthetic a(Lio/agora/rtc/internal/a;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method private a(I)Lio/agora/rtc/internal/a$f;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v0, Lio/agora/rtc/internal/a$g;

    invoke-direct {v0, p0}, Lio/agora/rtc/internal/a$g;-><init>(Lio/agora/rtc/internal/a;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance v0, Lio/agora/rtc/internal/a$e;

    invoke-direct {v0, p0}, Lio/agora/rtc/internal/a$e;-><init>(Lio/agora/rtc/internal/a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lio/agora/rtc/internal/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/agora/rtc/internal/a$d;-><init>(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$1;)V

    goto :goto_0
.end method

.method static synthetic a(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$f;)Lio/agora/rtc/internal/a$f;
    .locals 0

    iput-object p1, p0, Lio/agora/rtc/internal/a;->d:Lio/agora/rtc/internal/a$f;

    return-object p1
.end method

.method private a(Landroid/media/AudioManager;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const-string v0, "AudioRoute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStartBTSco "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sco on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/a;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v4, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-virtual {p1, v5}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    iget-object v0, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "connectAudio"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_1
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    const-string v0, "AudioRoute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStartBTSco done sco on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-direct {p0, v2}, Lio/agora/rtc/internal/a;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1, v4, v4, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Lio/agora/rtc/internal/a;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->k()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc/internal/a;->v:I

    return-void
.end method

.method static synthetic a(Lio/agora/rtc/internal/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/a;->e:Z

    return p1
.end method

.method static synthetic b(Lio/agora/rtc/internal/a;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/a;->z:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic b(Lio/agora/rtc/internal/a;I)Lio/agora/rtc/internal/a$f;
    .locals 1

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a;->a(I)Lio/agora/rtc/internal/a$f;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/internal/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/internal/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/agora/rtc/internal/a$a;->c(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AudioRoute"

    const-string v1, "failed to get audio routing listener"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/media/AudioManager;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "AudioRoute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStopBTSco "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sco on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v0, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "disconnectAudio"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v3, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lio/agora/rtc/internal/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/a;->g:Z

    return p1
.end method

.method private c(I)I
    .locals 5

    const/4 v1, 0x0

    const-string v0, "AudioRoute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set audio output routing from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/agora/rtc/internal/a;->j:I

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/internal/a;->h()Landroid/media/AudioManager;

    move-result-object v2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/internal/a;->n()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->n()I

    move-result v0

    const-string v2, "AudioRoute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "different audio routing from target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual routing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a;->d(I)I

    iput p1, p0, Lio/agora/rtc/internal/a;->j:I

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a;->b(I)V

    const-string v0, "AudioRoute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio routing changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/agora/rtc/internal/a;->j:I

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AudioRoute"

    const-string v3, "set audio output routing failed:"

    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic c(Lio/agora/rtc/internal/a;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/a;->f:I

    return p1
.end method

.method static synthetic c(Lio/agora/rtc/internal/a;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->e()V

    return-void
.end method

.method static synthetic c(Lio/agora/rtc/internal/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/a;->m:Z

    return p1
.end method

.method private d(I)I
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const-string v0, "AudioRoute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBluetoothSco sco started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/agora/rtc/internal/a;->u:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audio route target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/agora/rtc/internal/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/agora/rtc/internal/a;->j:I

    invoke-direct {p0, v2}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], engine role: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/agora/rtc/internal/a;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v4, :cond_2

    iget v0, p0, Lio/agora/rtc/internal/a;->p:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    iput-boolean v3, p0, Lio/agora/rtc/internal/a;->u:Z

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->e()V

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->j()V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/agora/rtc/internal/a;->u:Z

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->d()V

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->i()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lio/agora/rtc/internal/a;->j:I

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/internal/a;->u:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lio/agora/rtc/internal/a;->u:Z

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->e()V

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->j()V

    goto :goto_0
.end method

.method static synthetic d(Lio/agora/rtc/internal/a;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/a;->l:I

    return p1
.end method

.method static synthetic d(Lio/agora/rtc/internal/a;)Lio/agora/rtc/internal/a$f;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/a;->d:Lio/agora/rtc/internal/a$f;

    return-object v0
.end method

.method private d()V
    .locals 4

    const-string v0, "AudioRoute"

    const-string v1, "start bluetooth timer"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/a;->b:Lio/agora/rtc/internal/a$h;

    iget-object v1, p0, Lio/agora/rtc/internal/a;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc/internal/a$h;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic d(Lio/agora/rtc/internal/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/a;->n:Z

    return p1
.end method

.method static synthetic e(Lio/agora/rtc/internal/a;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/a;->p:I

    return p1
.end method

.method private e(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "MODE_NORMAL"

    goto :goto_0

    :pswitch_1
    const-string v0, "MODE_RINGTONE"

    goto :goto_0

    :pswitch_2
    const-string v0, "MODE_IN_CALL"

    goto :goto_0

    :pswitch_3
    const-string v0, "MODE_IN_COMMUNICATION"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private e()V
    .locals 2

    const-string v0, "AudioRoute"

    const-string v1, "cancel bluetooth timer"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/a;->b:Lio/agora/rtc/internal/a$h;

    iget-object v1, p0, Lio/agora/rtc/internal/a;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/agora/rtc/internal/a$h;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lio/agora/rtc/internal/a;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->l()V

    return-void
.end method

.method static synthetic e(Lio/agora/rtc/internal/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/a;->o:Z

    return p1
.end method

.method static synthetic f(Lio/agora/rtc/internal/a;)I
    .locals 1

    iget v0, p0, Lio/agora/rtc/internal/a;->k:I

    return v0
.end method

.method static synthetic f(Lio/agora/rtc/internal/a;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/a;->k:I

    return p1
.end method

.method private f(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "SCO_CONNECTING"

    goto :goto_0

    :pswitch_1
    const-string v0, "SCO_CONNECTED"

    goto :goto_0

    :pswitch_2
    const-string v0, "SCO_DISCONNECTING"

    goto :goto_0

    :pswitch_3
    const-string v0, "SCO_DISCONNECTED"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lio/agora/rtc/internal/a;->z:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/a;->z:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v3, p0, Lio/agora/rtc/internal/a;->z:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/a;->B:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v0, :cond_1

    iput-object v3, p0, Lio/agora/rtc/internal/a;->B:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    :cond_1
    return-void
.end method

.method static synthetic f(Lio/agora/rtc/internal/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/a;->h:Z

    return p1
.end method

.method private g(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Earpiece"

    goto :goto_0

    :pswitch_1
    const-string v0, "Speakerphone"

    goto :goto_0

    :pswitch_2
    const-string v0, "Loudspeaker"

    goto :goto_0

    :pswitch_3
    const-string v0, "Headset"

    goto :goto_0

    :pswitch_4
    const-string v0, "HeadsetOnly"

    goto :goto_0

    :pswitch_5
    const-string v0, "HeadsetBluetooth"

    goto :goto_0

    :pswitch_6
    const-string v0, "Default"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic g(Lio/agora/rtc/internal/a;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lio/agora/rtc/internal/a;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->j()V

    return-void
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/a;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/internal/a;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc/internal/a;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lio/agora/rtc/internal/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/a;->q:Z

    return p1
.end method

.method static synthetic h(Lio/agora/rtc/internal/a;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/a;->i:I

    return p1
.end method

.method private h()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/internal/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    goto :goto_0
.end method

.method static synthetic h(Lio/agora/rtc/internal/a;)Landroid/media/AudioManager;
    .locals 1

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->h()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lio/agora/rtc/internal/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a;->a(Z)V

    return-void
.end method

.method static synthetic i(Lio/agora/rtc/internal/a;)I
    .locals 1

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->n()I

    move-result v0

    return v0
.end method

.method static synthetic i(Lio/agora/rtc/internal/a;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/a;->j:I

    return p1
.end method

.method private i()V
    .locals 5

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->h()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const-string v2, "AudioRoute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to opening bt sco "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/agora/rtc/internal/a;->v:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/a;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lio/agora/rtc/internal/a;->t:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lio/agora/rtc/internal/a;->t:I

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/a;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] sco on: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lio/agora/rtc/internal/a;->t:I

    iget v1, p0, Lio/agora/rtc/internal/a;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/agora/rtc/internal/a;->v:I

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/a;->a(Landroid/media/AudioManager;)V

    goto :goto_0
.end method

.method private j()V
    .locals 5

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->h()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const-string v2, "AudioRoute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to stopping bt sco "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/a;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lio/agora/rtc/internal/a;->t:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lio/agora/rtc/internal/a;->t:I

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/a;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] sco on: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    iput v1, p0, Lio/agora/rtc/internal/a;->t:I

    :goto_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/a;->b(Landroid/media/AudioManager;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lio/agora/rtc/internal/a;->t:I

    goto :goto_0
.end method

.method static synthetic j(Lio/agora/rtc/internal/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a;->b(I)V

    return-void
.end method

.method static synthetic j(Lio/agora/rtc/internal/a;)Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/a;->h:Z

    return v0
.end method

.method static synthetic k(Lio/agora/rtc/internal/a;)I
    .locals 1

    iget v0, p0, Lio/agora/rtc/internal/a;->l:I

    return v0
.end method

.method static synthetic k(Lio/agora/rtc/internal/a;I)I
    .locals 1

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a;->c(I)I

    move-result v0

    return v0
.end method

.method private k()V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->h()Landroid/media/AudioManager;

    move-result-object v5

    iget-object v0, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_1

    const-string v0, "AudioRoute"

    const-string v1, "no bluetooth profile connected"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "isAudioOn"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v6, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :goto_1
    iget-object v4, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "AudioRoute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCO connected with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    :goto_2
    iget v1, p0, Lio/agora/rtc/internal/a;->v:I

    if-ge v1, v3, :cond_5

    const-string v1, "AudioRoute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemps trying, bt sco started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lio/agora/rtc/internal/a;->u:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sco connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/agora/rtc/internal/a;->v:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/agora/rtc/internal/a;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/agora/rtc/internal/a;->t:I

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/a;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/agora/rtc/internal/a;->u:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->d()V

    iget v0, p0, Lio/agora/rtc/internal/a;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/agora/rtc/internal/a;->v:I

    invoke-direct {p0, v5}, Lio/agora/rtc/internal/a;->a(Landroid/media/AudioManager;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v4

    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v4

    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "AudioRoute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCO is not connected with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    const-string v0, "AudioRoute"

    const-string v1, "no bluetooth device connected."

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "AudioRoute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start bluetooth sco timeout, actual routing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->n()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lio/agora/rtc/internal/a;->v:I

    iget-object v0, p0, Lio/agora/rtc/internal/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/internal/a$a;

    const/16 v1, 0x406

    invoke-interface {v0, v1}, Lio/agora/rtc/internal/a$a;->d(I)V

    goto/16 :goto_0
.end method

.method static synthetic l(Lio/agora/rtc/internal/a;I)I
    .locals 1

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a;->d(I)I

    move-result v0

    return v0
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lio/agora/rtc/internal/a;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/agora/rtc/internal/a;->k:I

    if-ne v0, v2, :cond_1

    iput v1, p0, Lio/agora/rtc/internal/a;->k:I

    const-string v0, "AudioRoute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update DefaultRouting to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/agora/rtc/internal/a;->k:I

    invoke-direct {p0, v2}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lio/agora/rtc/internal/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/agora/rtc/internal/a;->k:I

    if-ne v0, v1, :cond_0

    iput v2, p0, Lio/agora/rtc/internal/a;->k:I

    goto :goto_0
.end method

.method static synthetic l(Lio/agora/rtc/internal/a;)Z
    .locals 1

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lio/agora/rtc/internal/a;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/a;->t:I

    return p1
.end method

.method private m()V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x3

    iget v1, p0, Lio/agora/rtc/internal/a;->i:I

    if-ne v1, v0, :cond_2

    const-string v0, "AudioRoute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset(force) audio routing, default routing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/agora/rtc/internal/a;->k:I

    invoke-direct {p0, v2}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current routing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/agora/rtc/internal/a;->j:I

    invoke-direct {p0, v2}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target routing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual system routing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->n()I

    move-result v2

    invoke-direct {p0, v2}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/agora/rtc/internal/a;->j:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->n()I

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_0
    invoke-direct {p0, v3}, Lio/agora/rtc/internal/a;->c(I)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lio/agora/rtc/internal/a;->g:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    :cond_3
    :goto_1
    const-string v1, "AudioRoute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset audio routing, default routing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/agora/rtc/internal/a;->k:I

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current routing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/agora/rtc/internal/a;->j:I

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target routing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual system routing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->n()I

    move-result v3

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lio/agora/rtc/internal/a;->j:I

    if-ne v1, v0, :cond_4

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->n()I

    move-result v1

    iget v2, p0, Lio/agora/rtc/internal/a;->j:I

    if-eq v1, v2, :cond_1

    :cond_4
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/a;->c(I)I

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lio/agora/rtc/internal/a;->e:Z

    if-eqz v1, :cond_6

    iget v0, p0, Lio/agora/rtc/internal/a;->f:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lio/agora/rtc/internal/a;->i:I

    if-eqz v1, :cond_3

    iget v0, p0, Lio/agora/rtc/internal/a;->k:I

    goto :goto_1
.end method

.method static synthetic m(Lio/agora/rtc/internal/a;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->m()V

    return-void
.end method

.method private n()I
    .locals 2

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->h()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic n(Lio/agora/rtc/internal/a;)I
    .locals 1

    iget v0, p0, Lio/agora/rtc/internal/a;->j:I

    return v0
.end method

.method static synthetic o(Lio/agora/rtc/internal/a;)Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/a;->q:Z

    return v0
.end method

.method static synthetic p(Lio/agora/rtc/internal/a;)Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/a;->g:Z

    return v0
.end method

.method static synthetic q(Lio/agora/rtc/internal/a;)Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/a;->e:Z

    return v0
.end method


# virtual methods
.method public a()I
    .locals 8

    const/4 v7, 0x2

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const-string v0, "AudioRoute"

    const-string v3, "initialize +"

    invoke-static {v0, v3}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "AudioRoute"

    const-string v2, "context has been GCed"

    invoke-static {v0, v2}, Lio/agora/rtc/internal/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/internal/a;->h()Landroid/media/AudioManager;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "AudioRoute"

    const-string v2, "invalid context: can\'t get AudioManager"

    invoke-static {v0, v2}, Lio/agora/rtc/internal/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v4, Lio/agora/rtc/internal/a$h;

    invoke-direct {v4, p0, v1}, Lio/agora/rtc/internal/a$h;-><init>(Lio/agora/rtc/internal/a;Landroid/os/Looper;)V

    iput-object v4, p0, Lio/agora/rtc/internal/a;->b:Lio/agora/rtc/internal/a$h;

    :goto_1
    iget-object v1, p0, Lio/agora/rtc/internal/a;->x:Lio/agora/rtc/internal/a$i;

    if-nez v1, :cond_2

    new-instance v1, Lio/agora/rtc/internal/a$i;

    invoke-direct {v1, p0, v5}, Lio/agora/rtc/internal/a$i;-><init>(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$1;)V

    iput-object v1, p0, Lio/agora/rtc/internal/a;->x:Lio/agora/rtc/internal/a$i;

    :cond_2
    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iput-boolean v1, p0, Lio/agora/rtc/internal/a;->e:Z

    invoke-direct {p0, v7}, Lio/agora/rtc/internal/a;->a(I)Lio/agora/rtc/internal/a$f;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/internal/a;->d:Lio/agora/rtc/internal/a$f;

    const-string v1, "AudioRoute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Headset setup: Plugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lio/agora/rtc/internal/a;->e:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/rtc/internal/a;->x:Lio/agora/rtc/internal/a$i;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v6, p0, Lio/agora/rtc/internal/a;->r:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v1, v3, :cond_5

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "AudioRoute"

    const-string v1, "do not support BT monitoring on this device"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v4, Lio/agora/rtc/internal/a$h;

    invoke-direct {v4, p0, v1}, Lio/agora/rtc/internal/a$h;-><init>(Lio/agora/rtc/internal/a;Landroid/os/Looper;)V

    iput-object v4, p0, Lio/agora/rtc/internal/a;->b:Lio/agora/rtc/internal/a$h;

    goto :goto_1

    :cond_4
    iput-object v5, p0, Lio/agora/rtc/internal/a;->b:Lio/agora/rtc/internal/a$h;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lio/agora/rtc/internal/a;->B:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v1, :cond_6

    const-string v1, "AudioRoute"

    const-string v3, "Bluetooth service Listener already been initialized"

    invoke-static {v1, v3}, Lio/agora/rtc/internal/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lio/agora/rtc/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v0, "AudioRoute"

    const-string v1, "lacks BLUETOOTH permission"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_6
    :try_start_0
    new-instance v1, Lio/agora/rtc/internal/a$2;

    invoke-direct {v1, p0}, Lio/agora/rtc/internal/a$2;-><init>(Lio/agora/rtc/internal/a;)V

    iput-object v1, p0, Lio/agora/rtc/internal/a;->B:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v3, "AudioRoute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize failed: unable to create BluetoothProfile.ServiceListener, err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/agora/rtc/internal/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :try_start_1
    new-instance v1, Lio/agora/rtc/internal/a$b;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lio/agora/rtc/internal/a$b;-><init>(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$1;)V

    iput-object v1, p0, Lio/agora/rtc/internal/a;->y:Lio/agora/rtc/internal/a$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/internal/a;->z:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lio/agora/rtc/internal/a;->z:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lio/agora/rtc/internal/a;->z:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lio/agora/rtc/internal/a;->B:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, v0, v3, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v1, p0, Lio/agora/rtc/internal/a;->z:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    if-ne v7, v1, :cond_8

    iput-boolean v6, p0, Lio/agora/rtc/internal/a;->g:Z

    :cond_8
    const-string v1, "AudioRoute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT headset setup: BTHeadsetPlugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lio/agora/rtc/internal/a;->g:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc/internal/a;->A:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lio/agora/rtc/internal/a;->y:Lio/agora/rtc/internal/a$b;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-boolean v6, p0, Lio/agora/rtc/internal/a;->s:Z

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "AudioRoute"

    const-string v1, "initial Bluetooth SCO device unconnected"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lio/agora/rtc/internal/a;->t:I

    :cond_9
    :goto_4
    const-string v0, "AudioRoute"

    const-string v1, "initialize -"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v3, "AudioRoute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to create BluetoothHeadsetBroadcastReceiver, err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/agora/rtc/internal/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const-string v0, "AudioRoute"

    const-string v1, "initialize: failed to get bluetooth adapter!!"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "AudioRoute"

    const-string v1, "initial Bluetooth SCO device connected"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lio/agora/rtc/internal/a;->t:I

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(II)V
    .locals 3

    const-string v0, "AudioRoute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEvent: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], extra arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc/internal/a;->b:Lio/agora/rtc/internal/a$h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/a;->b:Lio/agora/rtc/internal/a$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/a;->b:Lio/agora/rtc/internal/a$h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lio/agora/rtc/internal/a$h;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/internal/a;->b:Lio/agora/rtc/internal/a$h;

    invoke-virtual {v1, v0}, Lio/agora/rtc/internal/a$h;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "AudioRoute"

    const-string v1, "uninitialize"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/agora/rtc/internal/a;->f()V

    iget-object v0, p0, Lio/agora/rtc/internal/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/agora/rtc/internal/a;->x:Lio/agora/rtc/internal/a$i;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/agora/rtc/internal/a;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/agora/rtc/internal/a;->x:Lio/agora/rtc/internal/a$i;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lio/agora/rtc/internal/a;->r:Z

    :cond_0
    iget-object v1, p0, Lio/agora/rtc/internal/a;->y:Lio/agora/rtc/internal/a$b;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lio/agora/rtc/internal/a;->s:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/agora/rtc/internal/a;->y:Lio/agora/rtc/internal/a$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lio/agora/rtc/internal/a;->s:Z

    :cond_1
    iput-object v3, p0, Lio/agora/rtc/internal/a;->x:Lio/agora/rtc/internal/a$i;

    iput-object v3, p0, Lio/agora/rtc/internal/a;->y:Lio/agora/rtc/internal/a$b;

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/internal/a;->d:Lio/agora/rtc/internal/a$f;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lio/agora/rtc/internal/a$f;->a(I)V

    return-void
.end method
