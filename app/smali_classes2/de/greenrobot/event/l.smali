.class final Lde/greenrobot/event/l;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lde/greenrobot/event/j;

.field final c:I

.field volatile d:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Lde/greenrobot/event/j;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/greenrobot/event/l;->a:Ljava/lang/Object;

    iput-object p2, p0, Lde/greenrobot/event/l;->b:Lde/greenrobot/event/j;

    iput p3, p0, Lde/greenrobot/event/l;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/greenrobot/event/l;->d:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lde/greenrobot/event/l;

    if-eqz v1, :cond_0

    check-cast p1, Lde/greenrobot/event/l;

    iget-object v1, p0, Lde/greenrobot/event/l;->a:Ljava/lang/Object;

    iget-object v2, p1, Lde/greenrobot/event/l;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lde/greenrobot/event/l;->b:Lde/greenrobot/event/j;

    iget-object v2, p1, Lde/greenrobot/event/l;->b:Lde/greenrobot/event/j;

    invoke-virtual {v1, v2}, Lde/greenrobot/event/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lde/greenrobot/event/l;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lde/greenrobot/event/l;->b:Lde/greenrobot/event/j;

    iget-object v1, v1, Lde/greenrobot/event/j;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
