.class public final synthetic Lcom/ifengyu/intercom/ui/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/SplashActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/e;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/e;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Ljava/util/List;)V

    return-void
.end method
