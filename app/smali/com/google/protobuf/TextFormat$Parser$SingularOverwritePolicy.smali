.class public final enum Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
.super Ljava/lang/Enum;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SingularOverwritePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

.field public static final enum ALLOW_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

.field public static final enum FORBID_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const-string v1, "ALLOW_SINGULAR_OVERWRITES"

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->ALLOW_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    new-instance v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const-string v1, "FORBID_SINGULAR_OVERWRITES"

    invoke-direct {v0, v1, v3}, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->FORBID_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    sget-object v1, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->ALLOW_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->FORBID_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->$VALUES:[Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    .locals 1

    const-class v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    .locals 1

    sget-object v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->$VALUES:[Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    invoke-virtual {v0}, [Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-object v0
.end method
