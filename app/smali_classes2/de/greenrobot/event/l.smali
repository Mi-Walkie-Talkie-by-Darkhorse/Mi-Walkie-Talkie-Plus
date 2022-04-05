.class final Lde/greenrobot/event/l;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lde/greenrobot/event/j;

.field volatile c:Z


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lde/greenrobot/event/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lde/greenrobot/event/l;

    iget-object v0, p0, Lde/greenrobot/event/l;->a:Ljava/lang/Object;

    iget-object v2, p1, Lde/greenrobot/event/l;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lde/greenrobot/event/l;->b:Lde/greenrobot/event/j;

    iget-object p1, p1, Lde/greenrobot/event/l;->b:Lde/greenrobot/event/j;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lde/greenrobot/event/l;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lde/greenrobot/event/l;->b:Lde/greenrobot/event/j;

    iget-object v1, v1, Lde/greenrobot/event/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
