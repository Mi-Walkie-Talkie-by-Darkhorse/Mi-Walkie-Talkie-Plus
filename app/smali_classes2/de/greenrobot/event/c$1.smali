.class Lde/greenrobot/event/c$1;
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
        "Ljava/lang/ThreadLocal",
        "<",
        "Lde/greenrobot/event/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/greenrobot/event/c;


# direct methods
.method constructor <init>(Lde/greenrobot/event/c;)V
    .locals 0

    iput-object p1, p0, Lde/greenrobot/event/c$1;->a:Lde/greenrobot/event/c;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lde/greenrobot/event/c$a;
    .locals 1

    new-instance v0, Lde/greenrobot/event/c$a;

    invoke-direct {v0}, Lde/greenrobot/event/c$a;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lde/greenrobot/event/c$1;->a()Lde/greenrobot/event/c$a;

    move-result-object v0

    return-object v0
.end method
