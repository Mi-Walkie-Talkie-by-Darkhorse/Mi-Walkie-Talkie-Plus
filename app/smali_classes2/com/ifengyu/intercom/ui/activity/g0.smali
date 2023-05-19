.class public final synthetic Lcom/ifengyu/intercom/ui/activity/g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/g0;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/g0;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->T(Ljava/lang/Boolean;)V

    return-void
.end method
