.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1;
.super Ljava/lang/Object;
.source "DolphinCustomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->a:Lorg/greenrobot/greendao/f;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->d(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    sget-object v3, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao$Properties;->a:Lorg/greenrobot/greendao/f;

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/f;->c(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$1;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method
