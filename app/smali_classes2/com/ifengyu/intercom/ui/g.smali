.class public final synthetic Lcom/ifengyu/intercom/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/SplashActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/g;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/g;->a:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
