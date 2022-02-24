.class public final synthetic Lcom/ifengyu/intercom/lite/h/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/h/g0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/h/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/l;->a:Lcom/ifengyu/intercom/lite/h/g0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/l;->a:Lcom/ifengyu/intercom/lite/h/g0;

    check-cast p1, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/lite/h/g0;->a(Lcom/ifengyu/intercom/lite/h/g0;Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
