.class public final synthetic Lcom/ifengyu/intercom/lite/h/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/h/g0;

.field private final synthetic b:Lcom/ifengyu/intercom/lite/models/ConfigFileModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/h/g0;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/q;->a:Lcom/ifengyu/intercom/lite/h/g0;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/h/q;->b:Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/q;->a:Lcom/ifengyu/intercom/lite/h/g0;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/h/q;->b:Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/h/g0;->e(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
