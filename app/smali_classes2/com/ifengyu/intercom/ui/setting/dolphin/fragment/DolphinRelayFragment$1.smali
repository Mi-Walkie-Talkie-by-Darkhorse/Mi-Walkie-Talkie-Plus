.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;
.super Ljava/lang/Object;
.source "DolphinRelayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->a:Lorg/greenrobot/greendao/f;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->d(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    const/4 v3, 0x0

    sget-object v4, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->a:Lorg/greenrobot/greendao/f;

    const/16 v5, 0x78

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/f;->c(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$1;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method
