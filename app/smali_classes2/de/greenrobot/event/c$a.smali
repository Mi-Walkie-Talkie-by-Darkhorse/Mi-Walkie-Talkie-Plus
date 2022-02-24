.class Lde/greenrobot/event/c$a;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lde/greenrobot/event/c$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lde/greenrobot/event/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lde/greenrobot/event/c$c;
    .locals 1

    .line 2
    new-instance v0, Lde/greenrobot/event/c$c;

    invoke-direct {v0}, Lde/greenrobot/event/c$c;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lde/greenrobot/event/c$a;->initialValue()Lde/greenrobot/event/c$c;

    move-result-object v0

    return-object v0
.end method
