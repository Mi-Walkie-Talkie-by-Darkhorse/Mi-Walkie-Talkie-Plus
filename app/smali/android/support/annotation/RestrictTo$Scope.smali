.class public final enum Landroid/support/annotation/RestrictTo$Scope;
.super Ljava/lang/Enum;
.source "RestrictTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/annotation/RestrictTo$Scope;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum b:Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum c:Landroid/support/annotation/RestrictTo$Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum d:Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum e:Landroid/support/annotation/RestrictTo$Scope;

.field private static final synthetic f:[Landroid/support/annotation/RestrictTo$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    const-string v1, "LIBRARY"

    invoke-direct {v0, v1, v2}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->a:Landroid/support/annotation/RestrictTo$Scope;

    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    const-string v1, "LIBRARY_GROUP"

    invoke-direct {v0, v1, v3}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->b:Landroid/support/annotation/RestrictTo$Scope;

    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    const-string v1, "GROUP_ID"

    invoke-direct {v0, v1, v4}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->c:Landroid/support/annotation/RestrictTo$Scope;

    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    const-string v1, "TESTS"

    invoke-direct {v0, v1, v5}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->d:Landroid/support/annotation/RestrictTo$Scope;

    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    const-string v1, "SUBCLASSES"

    invoke-direct {v0, v1, v6}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->e:Landroid/support/annotation/RestrictTo$Scope;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/support/annotation/RestrictTo$Scope;

    sget-object v1, Landroid/support/annotation/RestrictTo$Scope;->a:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/annotation/RestrictTo$Scope;->b:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/annotation/RestrictTo$Scope;->c:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/annotation/RestrictTo$Scope;->d:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/annotation/RestrictTo$Scope;->e:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v6

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->f:[Landroid/support/annotation/RestrictTo$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/annotation/RestrictTo$Scope;
    .locals 1

    const-class v0, Landroid/support/annotation/RestrictTo$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/annotation/RestrictTo$Scope;

    return-object v0
.end method

.method public static values()[Landroid/support/annotation/RestrictTo$Scope;
    .locals 1

    sget-object v0, Landroid/support/annotation/RestrictTo$Scope;->f:[Landroid/support/annotation/RestrictTo$Scope;

    invoke-virtual {v0}, [Landroid/support/annotation/RestrictTo$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/annotation/RestrictTo$Scope;

    return-object v0
.end method
