.class public Lcom/ifengyu/blelib/b/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/blelib/b/f$a;
    }
.end annotation


# instance fields
.field private volatile a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/ifengyu/blelib/b/f;
    .locals 1

    invoke-static {}, Lcom/ifengyu/blelib/b/f$a;->a()Lcom/ifengyu/blelib/b/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ifengyu/blelib/b/f;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/blelib/b/f;->a:I

    iget v0, p0, Lcom/ifengyu/blelib/b/f;->a:I

    const v2, 0xffff

    if-le v0, v2, :cond_0

    iput v1, p0, Lcom/ifengyu/blelib/b/f;->a:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/blelib/b/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
