.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/AppSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/AppSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/j;->a:Lcom/ifengyu/intercom/ui/fragment/AppSettingFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/j;->a:Lcom/ifengyu/intercom/ui/fragment/AppSettingFragment;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/AppSettingFragment;->s3(Ljava/lang/Throwable;)V

    return-void
.end method
