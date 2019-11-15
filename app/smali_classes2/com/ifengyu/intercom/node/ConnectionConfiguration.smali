.class public Lcom/ifengyu/intercom/node/ConnectionConfiguration;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ifengyu/intercom/node/ConnectionConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a:I

    iput-object p2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e:Z

    iput-boolean p5, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d:Z

    iput-object p6, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f:Ljava/lang/String;

    iput p7, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g:I

    iput p8, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const/4 v5, 0x0

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 9

    const/4 v5, 0x0

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v7, p4

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)V
    .locals 9

    sget v1, Lcom/ifengyu/intercom/b/w;->a:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d:Z

    iput-object p1, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iget v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->h:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionConfiguration["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDeviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/ifengyu/intercom/node/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a:I

    invoke-static {p1, v4, v1}, Lcom/ifengyu/intercom/node/safeparcel/a;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/ifengyu/intercom/node/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/ifengyu/intercom/node/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->e:Z

    invoke-static {p1, v1, v2}, Lcom/ifengyu/intercom/node/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->d:Z

    invoke-static {p1, v1, v2}, Lcom/ifengyu/intercom/node/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/ifengyu/intercom/node/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->g:I

    invoke-static {p1, v1, v2}, Lcom/ifengyu/intercom/node/safeparcel/a;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget v2, p0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->h:I

    invoke-static {p1, v1, v2}, Lcom/ifengyu/intercom/node/safeparcel/a;->a(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/node/safeparcel/a;->a(Landroid/os/Parcel;I)V

    return-void
.end method
