.class public final synthetic Lcom/ifengyu/intercom/ui/activity/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/u;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/u;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/u;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/u;->b:I

    check-cast p1, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->R(ILcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method
