.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/k0/h;
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

    iput p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/h;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/h;->a:I

    check-cast p1, Lcom/ifengyu/library/http/entity/HttpDataList;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->W(ILcom/ifengyu/library/http/entity/HttpDataList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
