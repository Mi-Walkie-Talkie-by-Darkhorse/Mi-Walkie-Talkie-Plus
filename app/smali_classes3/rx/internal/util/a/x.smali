.class abstract Lrx/internal/util/a/x;
.super Lrx/internal/util/a/u;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/u",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final g:J


# instance fields
.field protected h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lrx/internal/util/a/x;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/a/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/a/x;->g:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lrx/internal/util/a/u;-><init>(I)V

    return-void
.end method
