.class public final enum Landroidx/annotation/RestrictTo$Scope;
.super Ljava/lang/Enum;
.source "RestrictTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/RestrictTo$Scope;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum b:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum c:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum d:Landroidx/annotation/RestrictTo$Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum e:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum f:Landroidx/annotation/RestrictTo$Scope;

.field private static final synthetic g:[Landroidx/annotation/RestrictTo$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v1, 0x0

    const-string v2, "LIBRARY"

    invoke-direct {v0, v2, v1}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->a:Landroidx/annotation/RestrictTo$Scope;

    .line 2
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v2, 0x1

    const-string v3, "LIBRARY_GROUP"

    invoke-direct {v0, v3, v2}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->b:Landroidx/annotation/RestrictTo$Scope;

    .line 3
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v3, 0x2

    const-string v4, "LIBRARY_GROUP_PREFIX"

    invoke-direct {v0, v4, v3}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;

    .line 4
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v4, 0x3

    const-string v5, "GROUP_ID"

    invoke-direct {v0, v5, v4}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->d:Landroidx/annotation/RestrictTo$Scope;

    .line 5
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v5, 0x4

    const-string v6, "TESTS"

    invoke-direct {v0, v6, v5}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->e:Landroidx/annotation/RestrictTo$Scope;

    .line 6
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v6, 0x5

    const-string v7, "SUBCLASSES"

    invoke-direct {v0, v7, v6}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->f:Landroidx/annotation/RestrictTo$Scope;

    const/4 v7, 0x6

    new-array v7, v7, [Landroidx/annotation/RestrictTo$Scope;

    .line 7
    sget-object v8, Landroidx/annotation/RestrictTo$Scope;->a:Landroidx/annotation/RestrictTo$Scope;

    aput-object v8, v7, v1

    sget-object v1, Landroidx/annotation/RestrictTo$Scope;->b:Landroidx/annotation/RestrictTo$Scope;

    aput-object v1, v7, v2

    sget-object v1, Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;

    aput-object v1, v7, v3

    sget-object v1, Landroidx/annotation/RestrictTo$Scope;->d:Landroidx/annotation/RestrictTo$Scope;

    aput-object v1, v7, v4

    sget-object v1, Landroidx/annotation/RestrictTo$Scope;->e:Landroidx/annotation/RestrictTo$Scope;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Landroidx/annotation/RestrictTo$Scope;->g:[Landroidx/annotation/RestrictTo$Scope;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/RestrictTo$Scope;
    .locals 1

    .line 1
    const-class v0, Landroidx/annotation/RestrictTo$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/annotation/RestrictTo$Scope;

    return-object p0
.end method

.method public static values()[Landroidx/annotation/RestrictTo$Scope;
    .locals 1

    .line 1
    sget-object v0, Landroidx/annotation/RestrictTo$Scope;->g:[Landroidx/annotation/RestrictTo$Scope;

    invoke-virtual {v0}, [Landroidx/annotation/RestrictTo$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/RestrictTo$Scope;

    return-object v0
.end method
