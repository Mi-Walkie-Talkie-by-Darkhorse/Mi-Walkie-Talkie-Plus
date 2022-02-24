.class Lcom/ifengyu/intercom/lite/h/f0$b;
.super Lcom/ifengyu/blelib/c/e;
.source "BatchConfigViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/h/f0;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/lite/h/f0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/h/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/f0$b;->c:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/f0$b;->c:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/f0;->c(Lcom/ifengyu/intercom/lite/h/f0;)Landroidx/lifecycle/p;

    move-result-object p1

    const v0, 0x7f1102c8

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ifengyu/blelib/d/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/d/c;->b()Lcom/google/protobuf/Message;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgResponse;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgResponse;->getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->SUCCESS:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/f0$b;->c:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/f0;->a(Lcom/ifengyu/intercom/lite/h/f0;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/e/f;->c(Z)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/f0$b;->c:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/f0;->c(Lcom/ifengyu/intercom/lite/h/f0;)Landroidx/lifecycle/p;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/h/f0$b;->c:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/h/f0;->c(Lcom/ifengyu/intercom/lite/h/f0;)Landroidx/lifecycle/p;

    move-result-object p1

    const v0, 0x7f1102c8

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
