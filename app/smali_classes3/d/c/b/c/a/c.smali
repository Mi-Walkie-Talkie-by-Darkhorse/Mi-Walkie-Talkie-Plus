.class public Ld/c/b/c/a/c;
.super Landroid/database/ContentObserver;
.source "IdentifierIdObserver.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ld/c/b/c/a/b;


# direct methods
.method public constructor <init>(Ld/c/b/c/a/b;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Ld/c/b/c/a/c;->c:Ld/c/b/c/a/b;

    .line 3
    iput p2, p0, Ld/c/b/c/a/c;->b:I

    .line 4
    iput-object p3, p0, Ld/c/b/c/a/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Ld/c/b/c/a/c;->c:Ld/c/b/c/a/b;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Ld/c/b/c/a/c;->b:I

    iget-object v1, p0, Ld/c/b/c/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ld/c/b/c/a/b;->c(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "VMS_IDLG_SDK_Observer"

    const-string v0, "mIdentifierIdClient is null"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
