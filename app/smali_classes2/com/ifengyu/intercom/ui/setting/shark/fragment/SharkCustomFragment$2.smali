.class Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$2;
.super Ljava/lang/Object;
.source "SharkCustomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->g()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->e:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f()V

    return-void
.end method
