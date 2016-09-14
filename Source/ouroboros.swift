let swift = [
  "print(\"#import <Foundation/Foundation.h>\")",
  "print(\"int main (int argc, const char * argv[]) {\")",
  "print(\"    @autoreleasepool {\")",
  "print(\"        NSArray *swift = @[\")",
  "swift.forEach({ line in",
  "  print(\"            @\\\"\", terminator: \"\")",
  "  line.characters.forEach({ c in",
  "    switch (c) {",
  "      case Character(\"\\\\\"):",
  "        print(\"\\\\\\\\\", terminator: \"\")",
  "      case Character(\"\\\"\"):",
  "        print(\"\\\\\\\"\", terminator: \"\")",
  "      default:",
  "        print(c, terminator: \"\")",
  "    }",
  "  })",
  "  print(\"\\\",\")",
  "})",
  "print(\"        ];\")",
  "print(\"        NSArray *objc = @[\")",
  "objc.forEach({ line in",
  "  print(\"            @\\\"\", terminator: \"\")",
  "  line.characters.forEach({ c in",
  "    switch (c) {",
  "      case Character(\"\\\\\"):",
  "        print(\"\\\\\\\\\", terminator: \"\")",
  "      case Character(\"\\\"\"):",
  "        print(\"\\\\\\\"\", terminator: \"\")",
  "      default:",
  "        print(c, terminator: \"\")",
  "    }",
  "  })",
  "  print(\"\\\",\")",
  "})",
  "print(\"        ];\")",
  "objc.forEach({ line in",
  "  print(line)",
  "})",
  "print(\"    }\")",
  "print(\"    return 0;\")",
  "print(\"}\")",
]
let objc = [
  "        printf(\"%s\", \"let swift = [\\n\");",
  "        for (NSString *line in swift) {",
  "            NSString *escaped = [line stringByReplacingOccurrencesOfString:@\"\\\\\" withString:@\"\\\\\\\\\"];",
  "            escaped = [escaped stringByReplacingOccurrencesOfString:@\"\\\"\" withString:@\"\\\\\\\"\"];",
  "            printf(\"  \\\"%s\\\",\\n\", [escaped cStringUsingEncoding:NSUTF8StringEncoding]);",
  "        }",
  "        printf(\"%s\", \"]\\n\");",
  "        printf(\"%s\", \"let objc = [\\n\");",
  "        for (NSString *line in objc) {",
  "            NSString *escaped = [line stringByReplacingOccurrencesOfString:@\"\\\\\" withString:@\"\\\\\\\\\"];",
  "            escaped = [escaped stringByReplacingOccurrencesOfString:@\"\\\"\" withString:@\"\\\\\\\"\"];",
  "            printf(\"  \\\"%s\\\",\\n\", [escaped cStringUsingEncoding:NSUTF8StringEncoding]);",
  "        }",
  "        printf(\"%s\", \"]\\n\");",
  "        for (NSString *line in swift) {",
  "            printf(\"%s\\n\", [line cStringUsingEncoding:NSUTF8StringEncoding]);",
  "        }",
]
print("#import <Foundation/Foundation.h>")
print("int main (int argc, const char * argv[]) {")
print("    @autoreleasepool {")
print("        NSArray *swift = @[")
swift.forEach({ line in
  print("            @\"", terminator: "")
  line.characters.forEach({ c in
    switch (c) {
      case Character("\\"):
        print("\\\\", terminator: "")
      case Character("\""):
        print("\\\"", terminator: "")
      default:
        print(c, terminator: "")
    }
  })
  print("\",")
})
print("        ];")
print("        NSArray *objc = @[")
objc.forEach({ line in
  print("            @\"", terminator: "")
  line.characters.forEach({ c in
    switch (c) {
      case Character("\\"):
        print("\\\\", terminator: "")
      case Character("\""):
        print("\\\"", terminator: "")
      default:
        print(c, terminator: "")
    }
  })
  print("\",")
})
print("        ];")
objc.forEach({ line in
  print(line)
})
print("    }")
print("    return 0;")
print("}")
