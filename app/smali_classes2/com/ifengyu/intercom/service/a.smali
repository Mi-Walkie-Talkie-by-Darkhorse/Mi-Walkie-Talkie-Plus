.class public final synthetic Lcom/ifengyu/intercom/service/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/service/ShareLocationService;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/service/ShareLocationService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/service/a;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    iput-object p2, p0, Lcom/ifengyu/intercom/service/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/service/a;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    iget-object v1, p0, Lcom/ifengyu/intercom/service/a;->b:Ljava/lang/String;

    check-cast p1, Lcom/ifengyu/library/account/UserInfo;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/service/ShareLocationService;->k(Ljava/lang/String;Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method
