.class Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->b(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a$a;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$a;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
