.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/h1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/intercom/ui/fragment/h1;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/h1;->a:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/x1;->v3(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
