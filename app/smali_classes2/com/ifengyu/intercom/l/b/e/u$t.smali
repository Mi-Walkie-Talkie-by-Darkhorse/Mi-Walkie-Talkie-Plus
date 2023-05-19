.class Lcom/ifengyu/intercom/l/b/e/u$t;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/u;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/l/b/e/u;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/l/b/e/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$t;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u$t;->c:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/e/u;->h(Lcom/ifengyu/intercom/l/b/e/u;)Landroidx/lifecycle/o;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->e(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method
