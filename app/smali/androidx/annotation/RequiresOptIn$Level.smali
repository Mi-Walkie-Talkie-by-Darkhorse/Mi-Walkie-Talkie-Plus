.class public final enum Landroidx/annotation/RequiresOptIn$Level;
.super Ljava/lang/Enum;
.source "RequiresOptIn.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/RequiresOptIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/RequiresOptIn$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/annotation/RequiresOptIn$Level;

.field private static final synthetic b:[Landroidx/annotation/RequiresOptIn$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/annotation/RequiresOptIn$Level;

    new-instance v1, Landroidx/annotation/RequiresOptIn$Level;

    const-string v2, "WARNING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/annotation/RequiresOptIn$Level;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Landroidx/annotation/RequiresOptIn$Level;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/annotation/RequiresOptIn$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/annotation/RequiresOptIn$Level;->a:Landroidx/annotation/RequiresOptIn$Level;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/annotation/RequiresOptIn$Level;->b:[Landroidx/annotation/RequiresOptIn$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/RequiresOptIn$Level;
    .locals 1

    const-class v0, Landroidx/annotation/RequiresOptIn$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/annotation/RequiresOptIn$Level;

    return-object p0
.end method

.method public static values()[Landroidx/annotation/RequiresOptIn$Level;
    .locals 1

    sget-object v0, Landroidx/annotation/RequiresOptIn$Level;->b:[Landroidx/annotation/RequiresOptIn$Level;

    invoke-virtual {v0}, [Landroidx/annotation/RequiresOptIn$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/RequiresOptIn$Level;

    return-object v0
.end method
