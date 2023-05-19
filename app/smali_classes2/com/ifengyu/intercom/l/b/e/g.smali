.class public final synthetic Lcom/ifengyu/intercom/l/b/e/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/e/t;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/e/t;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/g;->a:Lcom/ifengyu/intercom/l/b/e/t;

    iput p2, p0, Lcom/ifengyu/intercom/l/b/e/g;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/g;->a:Lcom/ifengyu/intercom/l/b/e/t;

    iget v1, p0, Lcom/ifengyu/intercom/l/b/e/g;->b:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/l/b/e/t;->w(ILjava/lang/Integer;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
