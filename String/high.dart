void main() {
  String s =
      'assssssssssssssjhhhhhhhhhhhhhhhhhhhhupppppppppppppppppppppppppppppppp';
  String char = '';
  int count = 1;
  int count1 = 1;
  for (int i = 0; i < s.length - 1; i++) {
    if (s[i] == s[i + 1]) {
      count++;
    } else {
      if (count > count1) {
        char = s[i];
        print(s[i]);
        count1 = count;
        count = 1;
      }
    }
  }
  if (count > count1) {
    char = s[s.length - 1];
  }
  print('character:$char');
}
