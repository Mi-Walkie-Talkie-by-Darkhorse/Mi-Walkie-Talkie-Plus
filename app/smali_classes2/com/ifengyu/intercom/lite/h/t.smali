.class public final synthetic Lcom/ifengyu/intercom/lite/h/t;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/h/h0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/h/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/h/t;->a:Lcom/ifengyu/intercom/lite/h/h0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/h/t;->a:Lcom/ifengyu/intercom/lite/h/h0;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/h/h0;->b(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
